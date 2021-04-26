from lxml import etree
import libsbml
import os


def fix_namespaces(rel_filename, working_dir):
    """ Fix the namespaces in a SED-ML file and save the file in place

    * Remove duplicate SED-ML namespace declarations -- automatically fixed by LXML
    * Add namespaces for models

    Args:
        rel_filename (:obj:`str`): file name relative to :obj:`working_dir`
        working_dir (:obj:`str`): directory of entries to change (e.g., ``final``, ``original``)
    """
    filename = os.path.join(working_dir, rel_filename)
    # parse file
    try:
        doc_etree = etree.parse(filename)
    except:
        return
    root = doc_etree.getroot()

    # get models
    default_ns_uri = root.nsmap[None]
    namespaces = {'sedml': default_ns_uri}
    models = root.xpath('/sedml:sedML/sedml:listOfModels/sedml:model', namespaces=namespaces)

    # get namespaces for models
    model_namespaces = {}
    for model in models:
        model_filename = os.path.join(os.path.dirname(filename), model.get('source'))
        if os.path.isfile(model_filename):
            model_doc = libsbml.readSBMLFromFile(model_filename)
            model_namespaces['sbml'] = model_doc.getURI()

            for i_plugin in range(model_doc.getNumPlugins()):
                plugin = model_doc.getPlugin(i_plugin)
                package_name = plugin.getPackageName()
                if package_name in ['fbc', 'qual']:
                    model_namespaces[package_name] = plugin.getURI()

    # add namespace for associated model
    root_namespaces = model_namespaces
    for prefix, uri in root.nsmap.items():
        if root_namespaces.get(prefix, None) and root_namespaces.get(prefix, None) != uri:
            raise Exception('Namespaces clash')
        root_namespaces[prefix] = uri

    root2 = etree.Element(root.tag, nsmap=root_namespaces, attrib=root.attrib)
    doc_etree_2 = etree.ElementTree(root2)
    for child in root.getchildren():
        root2.append(child)

    # save fixed file
    doc_etree_2.write(filename,
                      xml_declaration=True,
                      encoding="utf-8",
                      standalone=False,
                      pretty_print=True)
    
def run(sedml_filenames, FINAL_ENTRIES_DIR):
    for filename in sedml_filenames:
        name = os.path.relpath(filename, FINAL_ENTRIES_DIR)
        fix_namespaces(name, FINAL_ENTRIES_DIR)
