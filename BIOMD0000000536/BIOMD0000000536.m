% This file works with OCTAVE and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file.
% To run this file with Matlab you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Dwivedi2014 - Crohns IL6 Disease model - sgp130 activity
%
% is http://identifiers.org/biomodels.db//MODEL1408050003
% is http://identifiers.org/biomodels.db//BIOMD0000000536
% isDescribedBy http://identifiers.org/pubmed/24402116
%


function main()
%Initial conditions vector
	x0=zeros(39,1);
	x0(1) = 4.35628896551166E-4;
	x0(2) = 3.9;
	x0(3) = 0.0874060669217432;
	x0(4) = 221.06367608557;
	x0(5) = 4.25350679194445;
	x0(6) = 0.00109424263781451;
	x0(7) = -1.22575436720674E-26;
	x0(8) = -2.29473714389906E-28;
	x0(9) = 0.388958921403941;
	x0(10) = 6.59935877686372E-5;
	x0(11) = 9.76164943878913E-4;
	x0(12) = 0.438235811135574;
	x0(13) = 7.2566581144648E-4;
	x0(14) = 1.60036523605187E-5;
	x0(15) = 0.765416493681823;
	x0(16) = 0.777537339578334;
	x0(17) = 9.22246266042167;
	x0(18) = 158.325846781611;
	x0(19) = 6.08704712819468;
	x0(20) = 409.775322370541;
	x0(21) = 5.5896988923534;
	x0(22) = 0.116343661809953;
	x0(23) = -1.68120955431364E-27;
	x0(24) = -6.97919693038973E-26;
	x0(25) = 0.00130682388893128;
	x0(26) = 0.374962692933961;
	x0(27) = 8.44890497633548E-5;
	x0(28) = 0.980272509547246;
	x0(29) = 0.610636013508212;
	x0(30) = 9.38936398649179;
	x0(31) = 159.80359735889;
	x0(32) = 6.06410682471754;
	x0(33) = 0.0093481986616084;
	x0(34) = 5.56973864471412;
	x0(35) = 0.136303909449242;
	x0(36) = -5.46278871281916E-28;
	x0(37) = 5.3253664019487E-28;
	x0(38) = -6.85083014757454E-27;
	x0(39) = 0.0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%	tspan=[0:0.01:100];
%	opts = odeset('AbsTol',1e-3);
%	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
	t=linspace(0,100,100);
	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
%function xdot=f(t,x)
% End Matlab code

% Start Octave code
function xdot=f(x,t)
% End Octave code

% Compartment: id = mw53ffe9e6_beef_45c4_90a5_a79197ed506e, name = serum, constant
	compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e=1.0;
% Compartment: id = mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, name = liver, constant
	compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e=1.0;
% Compartment: id = mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, name = gut, constant
	compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5=1.0;
% Compartment: id = mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87, name = peripheral, constant
	compartment_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87=1.0;
% Parameter:   id =  kRLOn, name = kRLOn
	global_par_kRLOn=0.384;
% Parameter:   id =  kRLOff, name = kRLOff
	global_par_kRLOff=1.92;
% Parameter:   id =  kgp130On, name = kgp130On
	global_par_kgp130On=20.52;
% Parameter:   id =  kgp130Off, name = kgp130Off
	global_par_kgp130Off=1.026;
% Parameter:   id =  kRAct, name = kRAct
	global_par_kRAct=155.0;
% Parameter:   id =  kRint, name = kRint
	global_par_kRint=1.96;
% Parameter:   id =  kRsynth, name = kRsynth
	global_par_kRsynth=0.0685;
% Parameter:   id =  kRdeg, name = kRintBasal
	global_par_kRdeg=0.1561;
% Parameter:   id =  kIL6Synth, name = ksynthIL6
	global_par_kIL6Synth=0.0063;
% Parameter:   id =  kIL6Decay, name = kdegIL6
	global_par_kIL6Decay=34.82;
% Parameter:   id =  kCRPDecay, name = kdegCRP
	global_par_kCRPDecay=0.36;
% Parameter:   id =  mwfd291862_195f_4979_94b5_b4e5ae1b7d52, name = KmSTATDephos
	global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52=5.34;
% Parameter:   id =  mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, name = VmSTATDephos
	global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc=0.62;
% Parameter:   id =  mw1667a8e0_9d20_4e59_ba51_596148aba787, name = VmRDephos
	global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787=0.525;
% Parameter:   id =  mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8, name = KmRDephos
	global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8=155.3;
% Parameter:   id =  mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, name = kcatSTATPhos
	global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569=145.0;
% Parameter:   id =  mwe8fc1900_f07d_468b_b5c8_15400a583c3d, name = KmSTATPhos
	global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d=219.0;
% Parameter:   id =  mw08950572_81b0_4570_b2e4_b9c3462c1425, name = KmProtSynth
	global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425=10.0;
% Parameter:   id =  mw92d854a7_8aaf_458e_b5e2_20a63ce9b654, name = VmProtSynth
	global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654=330.0;
% Parameter:   id =  mw862f1480_c60c_4863_a565_b2c1c77e238e, name = kCRPSecretion
	global_par_mw862f1480_c60c_4863_a565_b2c1c77e238e=0.5;
% Parameter:   id =  mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1, name = ksynthCRP
	global_par_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1=0.42;
% Parameter:   id =  mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab, name = ksynthsR
	global_par_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab=0.1;
% Parameter:   id =  mw88a75379_f9a1_4acc_baeb_94c32bb736a5, name = kdegsR
	global_par_mw88a75379_f9a1_4acc_baeb_94c32bb736a5=0.3;
% Parameter:   id =  mw1f41474c_c399_4a60_a53a_9926dd092e8d, name = ksynthsgp130
	global_par_mw1f41474c_c399_4a60_a53a_9926dd092e8d=3.9;
% Parameter:   id =  mwbcb5a310_9b67_405e_89ec_43d25e8cc93d, name = kdegsgp130
	global_par_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d=1.0;
% Parameter:   id =  mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69, name = ksynthIL6Gut
	global_par_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69=0.036;
% Parameter:   id =  mw06241335_b5f2_47ed_bdcc_ef77b68a2b98, name = kdegIL6Gut
	global_par_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98=1.0;
% Parameter:   id =  mwce10678d_8197_408c_ad47_1daec8104cd8, name = kdistTissueToSerum
	global_par_mwce10678d_8197_408c_ad47_1daec8104cd8=0.8473;
% Parameter:   id =  mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb, name = kdistSerumToTissue
	global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb=1.2125;
% Parameter:   id =  mw5832a2dc_ee18_44df_aa59_ccb21cb74df2, name = kRShedding
	global_par_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2=0.0054;
% Parameter:   id =  mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a, name = kintActiveR
	global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a=0.01;
% Parameter:   id =  mwdc9e2eb7_c8f4_4026_a8d0_eff8ce1f1aea, name = infusionTime
	global_par_mwdc9e2eb7_c8f4_4026_a8d0_eff8ce1f1aea=1.0;
% Parameter:   id =  mw640ca705_e089_4c64_a5f4_9562317e8c76, name = kAbSerumToLiver
	global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76=0.0208333333333333;
% Parameter:   id =  mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb, name = kAbLiverToSerum
	global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb=0.0208333333333333;
% Parameter:   id =  mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a, name = kAbSerumToGut
	global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a=0.0104166666666667;
% Parameter:   id =  mwa071fdbe_d498_4620_a7a4_940aa31c8161, name = kAbGutToSerum
	global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161=0.0208333333333333;
% Parameter:   id =  mw2c605ff5_50f5_45f2_a70c_53fcd866d14c, name = VSerum
	global_par_mw2c605ff5_50f5_45f2_a70c_53fcd866d14c=2.88;
% Parameter:   id =  mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1, name = VLiver
	global_par_mwc691d0d1_8c1b_4ce4_85c6_1315c42e97b1=2.88;
% Parameter:   id =  mwa8283449_0e21_41a1_baac_ebf697b3555a, name = VGut
	global_par_mwa8283449_0e21_41a1_baac_ebf697b3555a=1.44;
% Parameter:   id =  mw6729db10_c577_4319_b355_2e3f11c0f942, name = VPeriph
	global_par_mw6729db10_c577_4319_b355_2e3f11c0f942=0.576;
% Parameter:   id =  mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825, name = QSerumLiver
	global_par_mw434adaf5_cef0_4a33_9ad2_a4e49e1fd825=0.06;
% Parameter:   id =  mw6a5e10a9_d442_4dde_8ec3_6a26c9807374, name = QSerumGut
	global_par_mw6a5e10a9_d442_4dde_8ec3_6a26c9807374=0.03;
% Parameter:   id =  mw1366c3b5_e79b_44a7_93cc_ee09d383eabf, name = QSerumPeriph
	global_par_mw1366c3b5_e79b_44a7_93cc_ee09d383eabf=0.001;
% Parameter:   id =  mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce, name = kAbSerumToPeriph
	global_par_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce=3.47222222222222E-4;
% Parameter:   id =  mw4aea26f6_8860_414c_97f5_40d325196f2e, name = kAbPeriphToSerum
	global_par_mw4aea26f6_8860_414c_97f5_40d325196f2e=0.00173611111111111;
% Parameter:   id =  mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, name = kdegAb
	global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30=0.0018;
% Parameter:   id =  parameter_1, name = Dose Q1W
	global_par_parameter_1=0.0;
% Parameter:   id =  parameter_2, name = Dose Q2W
	global_par_parameter_2=0.0;
% Parameter:   id =  parameter_3, name = Dose Q4W
	global_par_parameter_3=0.0;
% Parameter:   id =  Metabolite_80, name = Initial for CRP
	global_par_Metabolite_80=221.06367608557;
% Parameter:   id =  ModelValue_3, name = Initial for Dose Q1W
	global_par_ModelValue_3=0.0;
% Parameter:   id =  ModelValue_4, name = Initial for Dose Q2W
	global_par_ModelValue_4=0.0;
% Parameter:   id =  ModelValue_5, name = Initial for Dose Q4W
	global_par_ModelValue_5=0.0;
% assignmentRule: variable = species_1
	x(39)=(x(4)-global_par_Metabolite_80)/global_par_Metabolite_80/(-100);
% assignmentRule: variable = mw0083d743_836f_4238_a17f_4602193d5bc0
	x(31)=global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654*x(30)/(global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425+x(30));
% assignmentRule: variable = mwd5313618_89eb_4c8c_bc82_66f10f966349
	x(18)=global_par_mw92d854a7_8aaf_458e_b5e2_20a63ce9b654*x(17)/(global_par_mw08950572_81b0_4570_b2e4_b9c3462c1425+x(17));

% Reaction: id = reaction_1, name = reaction_1
	reaction_reaction_1=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_1(global_par_kRLOff, global_par_kRLOn, x(6), x(5), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(1));

% Reaction: id = reaction_2, name = reaction_2
	reaction_reaction_2=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_2(global_par_kgp130Off, global_par_kgp130On, x(6), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(3), x(2));

% Reaction: id = reaction_3, name = reaction_3
	reaction_reaction_3=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_3(global_par_kIL6Synth, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = reaction_4, name = reaction_4
	reaction_reaction_4=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_4(global_par_kIL6Decay, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(1));

% Reaction: id = reaction_5, name = reaction_5
	reaction_reaction_5=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_5(global_par_kCRPDecay, x(4), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = reaction_6, name = reaction_6
	reaction_reaction_6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_6(global_par_kgp130Off, global_par_kgp130On, x(11), x(9), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(10));

% Reaction: id = reaction_7, name = reaction_7
	reaction_reaction_7=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_7(global_par_kRLOff, global_par_kRLOn, x(13), x(12), x(14), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_8, name = reaction_8
	reaction_reaction_8=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_8(global_par_kgp130Off, global_par_kgp130On, x(14), x(9), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(10));

% Reaction: id = reaction_16, name = reaction_16
	reaction_reaction_16=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_9(global_par_kRAct, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(10));

% Reaction: id = reaction_9, name = reaction_9
	reaction_reaction_9=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_10(x(15), x(16), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d);

% Reaction: id = reaction_10, name = reaction_10
	reaction_reaction_10=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_11(x(17), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52);

% Reaction: id = reaction_15, name = reaction_15
	reaction_reaction_15=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_12(global_par_kRdeg, x(12), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_11, name = reaction_11
	reaction_reaction_11=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_13(global_par_kRint, x(14), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_12, name = reaction_12
	reaction_reaction_12=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_14(global_par_kRint, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(10));

% Reaction: id = reaction_13, name = reaction_13
	reaction_reaction_13=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_15(x(15), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a);

% Reaction: id = reaction_14, name = reaction_14
	reaction_reaction_14=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_16(global_par_kRsynth, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = reaction_41, name = reaction_41
	reaction_reaction_41=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_17(global_par_kgp130Off, global_par_kgp130On, x(25), x(27), x(26), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_46, name = reaction_46
	reaction_reaction_46=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_18(global_par_kRAct, x(27), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_42, name = reaction_42
	reaction_reaction_42=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_19(x(29), x(28), global_par_mw9442cd0e_4d7c_4ba6_a695_f84919bdf569, global_par_mwe8fc1900_f07d_468b_b5c8_15400a583c3d, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_43, name = reaction_43
	reaction_reaction_43=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_20(x(30), global_par_mwd36b0261_2480_4cab_9222_2cf8fb0e65dc, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwfd291862_195f_4979_94b5_b4e5ae1b7d52);

% Reaction: id = reaction_44, name = reaction_44
	reaction_reaction_44=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_21(global_par_kRint, x(27), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = reaction_45, name = reaction_45
	reaction_reaction_45=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_22(x(28), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a);

% Reaction: id = mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4, name = mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4
	reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_23(x(15), global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8);

% Reaction: id = mw64df7c9e_35da_4c7f_be56_c5dabfb060b6, name = mw64df7c9e_35da_4c7f_be56_c5dabfb060b6
	reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_24(global_par_mw1667a8e0_9d20_4e59_ba51_596148aba787, x(28), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, global_par_mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8);

% Reaction: id = mw391f3b8e_5649_4851_b2e2_782cb3e015b6, name = mw391f3b8e_5649_4851_b2e2_782cb3e015b6
	reaction_mw391f3b8e_5649_4851_b2e2_782cb3e015b6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_25(global_par_kRsynth, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mw4a00a3a4_778f_4952_8100_2dc3cc2b7046, name = mw4a00a3a4_778f_4952_8100_2dc3cc2b7046
	reaction_mw4a00a3a4_778f_4952_8100_2dc3cc2b7046=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_26(global_par_kRdeg, x(9), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mw6db30657_4e56_4c3a_8575_9c67393dde4f, name = mw6db30657_4e56_4c3a_8575_9c67393dde4f
	reaction_mw6db30657_4e56_4c3a_8575_9c67393dde4f=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_27(global_par_kRsynth, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw6f470e13_f0e4_4294_83d8_59dd5670d10c, name = mw6f470e13_f0e4_4294_83d8_59dd5670d10c
	reaction_mw6f470e13_f0e4_4294_83d8_59dd5670d10c=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_28(global_par_kRdeg, x(26), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f, name = mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f
	reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(5)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(32);

% Reaction: id = mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1, name = mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1
	reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(1)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(33);

% Reaction: id = mw4c099d5c_200f_474e_8ec1_59e9223a8afd, name = mw4c099d5c_200f_474e_8ec1_59e9223a8afd
	reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_29(global_par_kRLOff, global_par_kRLOn, x(33), x(25), x(32), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwbe8567ce_3349_4442_8b12_53cd9bc168e7, name = mwbe8567ce_3349_4442_8b12_53cd9bc168e7
	reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(6)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(25);

% Reaction: id = mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705, name = mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705
	reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(5)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(19);

% Reaction: id = mw1046000b_e1e8_4f6f_82a1_532d2aa793bb, name = mw1046000b_e1e8_4f6f_82a1_532d2aa793bb
	reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(1)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(13);

% Reaction: id = mw8e8b65a8_6830_4091_9a40_19645e8fe554, name = mw8e8b65a8_6830_4091_9a40_19645e8fe554
	reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(6)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(11);

% Reaction: id = mwa812f08f_1035_42bd_82d2_72d691308f88, name = mwa812f08f_1035_42bd_82d2_72d691308f88
	reaction_mwa812f08f_1035_42bd_82d2_72d691308f88=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_30(global_par_kRLOff, global_par_kRLOn, x(13), x(19), x(11), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mwab0012ac_e5f2_4904_9893_820fd210402e, name = mwab0012ac_e5f2_4904_9893_820fd210402e
	reaction_mwab0012ac_e5f2_4904_9893_820fd210402e=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_31(global_par_mw862f1480_c60c_4863_a565_b2c1c77e238e, compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(18));

% Reaction: id = mwcdc24bd4_d9e4_47fe_8300_d222d853111c, name = mwcdc24bd4_d9e4_47fe_8300_d222d853111c
	reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(4)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(20);

% Reaction: id = mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76, name = mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76
	reaction_mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_32(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1);

% Reaction: id = mw1c5a5ff7_5130_490f_a740_6a744ccf8a94, name = mw1c5a5ff7_5130_490f_a740_6a744ccf8a94
	reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(2)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(34);

% Reaction: id = mw7b56053c_7256_4703_a8c3_4fd46b2c23d0, name = mw7b56053c_7256_4703_a8c3_4fd46b2c23d0
	reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(2)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(21);

% Reaction: id = mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c, name = mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c
	reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_33(global_par_kgp130Off, global_par_kgp130On, x(35), x(25), x(34), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6, name = mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6
	reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_34(global_par_kgp130Off, global_par_kgp130On, x(21), x(11), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, x(22));

% Reaction: id = mw01babcdf_0f03_46b0_81b1_201cc846e361, name = mw01babcdf_0f03_46b0_81b1_201cc846e361
	reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(3)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(35);

% Reaction: id = mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0, name = mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0
	reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0=global_par_mwc67e1333_079a_4bea_9b4f_0a1b15ddd7bb*x(3)-global_par_mwce10678d_8197_408c_ad47_1daec8104cd8*x(22);

% Reaction: id = mw432fde6e_59ab_47f0_9fb1_086433a602e3, name = mw432fde6e_59ab_47f0_9fb1_086433a602e3
	reaction_mw432fde6e_59ab_47f0_9fb1_086433a602e3=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_35(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab);

% Reaction: id = mw41c27823_d7ee_4554_9eac_3d5beec8e854, name = mw41c27823_d7ee_4554_9eac_3d5beec8e854
	reaction_mw41c27823_d7ee_4554_9eac_3d5beec8e854=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_36(x(5), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw88a75379_f9a1_4acc_baeb_94c32bb736a5);

% Reaction: id = mw50c6744c_e883_4612_8663_e38750cbad1b, name = mw50c6744c_e883_4612_8663_e38750cbad1b
	reaction_mw50c6744c_e883_4612_8663_e38750cbad1b=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_37(global_par_mw1f41474c_c399_4a60_a53a_9926dd092e8d, compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e);

% Reaction: id = mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db, name = mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db
	reaction_mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_38(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(2), global_par_mwbcb5a310_9b67_405e_89ec_43d25e8cc93d);

% Reaction: id = mw1ce0c484_681f_4d85_8ffe_392d0c100cfa, name = mw1ce0c484_681f_4d85_8ffe_392d0c100cfa
	reaction_mw1ce0c484_681f_4d85_8ffe_392d0c100cfa=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_39(global_par_mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mwf913ea0b_785a_4701_ac91_b18ab5dd5a89, name = mwf913ea0b_785a_4701_ac91_b18ab5dd5a89
	reaction_mwf913ea0b_785a_4701_ac91_b18ab5dd5a89=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_40(global_par_mw06241335_b5f2_47ed_bdcc_ef77b68a2b98, x(33), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw71d90b81_8211_4039_8807_12a7fe03206c, name = mw71d90b81_8211_4039_8807_12a7fe03206c
	reaction_mw71d90b81_8211_4039_8807_12a7fe03206c=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_41(x(4), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mw5832a2dc_ee18_44df_aa59_ccb21cb74df2);

% Reaction: id = mwdf4ba845_7271_4ada_b43f_fdac83df3b5c, name = mwdf4ba845_7271_4ada_b43f_fdac83df3b5c
	reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c=global_par_mwf67caf9d_2f4b_4986_abf2_e6090bbb72ce*x(7)-global_par_mw4aea26f6_8860_414c_97f5_40d325196f2e*x(38);

% Reaction: id = mwc32a28fa_525c_44af_8d2c_e728c21eb90a, name = mwc32a28fa_525c_44af_8d2c_e728c21eb90a
	reaction_mwc32a28fa_525c_44af_8d2c_e728c21eb90a=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_42(global_par_kgp130Off, global_par_kgp130On, x(6), compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(8), x(7));

% Reaction: id = mw14d351b9_623a_48e8_a21c_854411039120, name = mw14d351b9_623a_48e8_a21c_854411039120
	reaction_mw14d351b9_623a_48e8_a21c_854411039120=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_43(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, x(8), global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mwba7f4605_8571_439b_b3ab_eb0b43808db8, name = mwba7f4605_8571_439b_b3ab_eb0b43808db8
	reaction_mwba7f4605_8571_439b_b3ab_eb0b43808db8=compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e*function_44(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, x(7));

% Reaction: id = mw5be6711a_526a_4a58_80c6_d353dcabdf87, name = mw5be6711a_526a_4a58_80c6_d353dcabdf87
	reaction_mw5be6711a_526a_4a58_80c6_d353dcabdf87=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_45(x(37), global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);

% Reaction: id = mw1d3068d7_5679_41ee_9892_984e33012070, name = mw1d3068d7_5679_41ee_9892_984e33012070
	reaction_mw1d3068d7_5679_41ee_9892_984e33012070=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_46(global_par_kgp130Off, global_par_kgp130On, x(37), x(25), compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, x(36));

% Reaction: id = mwb341c690_7147_46a1_8577_201598de3bf1, name = mwb341c690_7147_46a1_8577_201598de3bf1
	reaction_mwb341c690_7147_46a1_8577_201598de3bf1=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_47(global_par_kgp130Off, global_par_kgp130On, x(23), x(24), x(11), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);

% Reaction: id = mw5d9fcd0c_ca08_4444_b509_2ea4777e0025, name = mw5d9fcd0c_ca08_4444_b509_2ea4777e0025
	reaction_mw5d9fcd0c_ca08_4444_b509_2ea4777e0025=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_48(x(23), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d, name = mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d
	reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d=global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76*x(7)-global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb*x(24);

% Reaction: id = mw14940d1f_6a1f_47cb_8170_801ba645f4c1, name = mw14940d1f_6a1f_47cb_8170_801ba645f4c1
	reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1=global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a*x(7)-global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161*x(36);

% Reaction: id = mwb62106e7_e959_4a1d_9a00_b36d4e19a48f, name = mwb62106e7_e959_4a1d_9a00_b36d4e19a48f
	reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f=global_par_mw640ca705_e089_4c64_a5f4_9562317e8c76*x(8)-global_par_mw43ccad8c_cabf_4eaf_90d5_e06ae43be2cb*x(23);

% Reaction: id = mwad648b6c_45ca_4f41_9747_06db1f6060fc, name = mwad648b6c_45ca_4f41_9747_06db1f6060fc
	reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc=global_par_mw9f83bdd3_3aa1_47ff_abd6_54e5ce60704a*x(8)-global_par_mwa071fdbe_d498_4620_a7a4_940aa31c8161*x(37);

% Reaction: id = mw2ae288ab_7d03_4a84_a024_c711ad2b77e6, name = mw2ae288ab_7d03_4a84_a024_c711ad2b77e6
	reaction_mw2ae288ab_7d03_4a84_a024_c711ad2b77e6=compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e*function_49(x(24), compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e, global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30);

% Reaction: id = mw9629d028_fcc0_4886_9e4d_36eecdb0381d, name = mw9629d028_fcc0_4886_9e4d_36eecdb0381d
	reaction_mw9629d028_fcc0_4886_9e4d_36eecdb0381d=compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5*function_50(global_par_mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30, compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5, x(36));

%Event: id=event_1
	event_event_1=time >= 168;

	if(event_event_1) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_2
	event_event_2=time >= 336;

	if(event_event_2) 
		x(7)=x(7)+global_par_ModelValue_3*2.346+global_par_ModelValue_4*2.346;
	end

%Event: id=event_3
	event_event_3=time >= 504;

	if(event_event_3) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_4
	event_event_4=time >= 672;

	if(event_event_4) 
		x(7)=x(7)+(global_par_ModelValue_3+global_par_ModelValue_4+global_par_ModelValue_5)*2.346;
	end

%Event: id=event_5
	event_event_5=time >= 840;

	if(event_event_5) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_6
	event_event_6=time >= 1008;

	if(event_event_6) 
		x(7)=x(7)+(global_par_ModelValue_3+global_par_ModelValue_4)*2.346;
	end

%Event: id=event_7
	event_event_7=time >= 1176;

	if(event_event_7) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_8
	event_event_8=time >= 1344;

	if(event_event_8) 
		x(7)=x(7)+(global_par_ModelValue_3+global_par_ModelValue_4+global_par_ModelValue_5)*2.346;
	end

%Event: id=event_9
	event_event_9=time >= 1512;

	if(event_event_9) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_10
	event_event_10=time >= 1680;

	if(event_event_10) 
		x(7)=x(7)+(global_par_ModelValue_3+global_par_ModelValue_4)*2.346;
	end

%Event: id=event_11
	event_event_11=time >= 1848;

	if(event_event_11) 
		x(7)=x(7)+global_par_ModelValue_3*2.346;
	end

%Event: id=event_12
	event_event_12=time >= 2016;

	if(event_event_12) 
		x(7)=x(7)+(global_par_ModelValue_3+global_par_ModelValue_4+global_par_ModelValue_5)*2.346;
	end

%Event: id=event_13
	event_event_13=time >= 0.1;

	if(event_event_13) 
		x(7)=x(7)+global_par_ModelValue_3*2.346+global_par_ModelValue_4*2.346+global_par_ModelValue_5*2.346;
	end

	xdot=zeros(39,1);
	
% Species:   id = mwf626e95e_543f_41e4_aad4_c6bf60ab345b, name = IL6, affected by kineticLaw
	xdot(1) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_1) + ( 1.0 * reaction_reaction_3) + (-1.0 * reaction_reaction_4) + (-1.0 * reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1) + (-1.0 * reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb));
	
% Species:   id = mwbbbce920_e8dd_4320_9386_fc94bfb2fc99, name = sgp130, affected by kineticLaw
	xdot(2) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_2) + (-1.0 * reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94) + (-1.0 * reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0) + ( 1.0 * reaction_mw50c6744c_e883_4612_8663_e38750cbad1b) + (-1.0 * reaction_mwb6a99eb5_ea4c_4733_98dd_1daf5ec6b0db));
	
% Species:   id = mw810ff751_fa4e_4143_bd50_169b3e325e1e, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(3) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_reaction_2) + (-1.0 * reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361) + (-1.0 * reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0));
	
% Species:   id = mw114aa90f_5f5b_4fe8_9406_361c8489b6a1, name = CRP, affected by kineticLaw
	xdot(4) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_5) + (-1.0 * reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c) + ( 1.0 * reaction_mwff2ebcf1_dcf1_47b9_9cac_7306fc6f7f76) + (-1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c) + ( 1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c));
	
% Species:   id = mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc, name = sR, affected by kineticLaw
	xdot(5) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_reaction_1) + (-1.0 * reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f) + (-1.0 * reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705) + ( 1.0 * reaction_mw432fde6e_59ab_47f0_9fb1_086433a602e3) + (-1.0 * reaction_mw41c27823_d7ee_4554_9eac_3d5beec8e854) + ( 1.0 * reaction_mw71d90b81_8211_4039_8807_12a7fe03206c));
	
% Species:   id = mw03db56ac_8dc6_4931_ae82_fef706d2ee3d, name = sR_IL6, affected by kineticLaw
	xdot(6) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_reaction_1) + (-1.0 * reaction_reaction_2) + (-1.0 * reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7) + (-1.0 * reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554) + (-1.0 * reaction_mwc32a28fa_525c_44af_8d2c_e728c21eb90a));
	
% Species:   id = mwf345ed7a_0622_403c_b816_c8749a2c9ded, name = sgpFc, affected by kineticLaw
	xdot(7) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*((-1.0 * reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c) + (-1.0 * reaction_mwc32a28fa_525c_44af_8d2c_e728c21eb90a) + (-1.0 * reaction_mwba7f4605_8571_439b_b3ab_eb0b43808db8) + (-1.0 * reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d) + (-1.0 * reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1));
	
% Species:   id = mwa2d8dd1c_bb9a_4552_8738_e24671651c1d, name = sR_IL6_sgpFc, affected by kineticLaw
	xdot(8) = (1/(compartment_mw53ffe9e6_beef_45c4_90a5_a79197ed506e))*(( 1.0 * reaction_mwc32a28fa_525c_44af_8d2c_e728c21eb90a) + (-1.0 * reaction_mw14d351b9_623a_48e8_a21c_854411039120) + (-1.0 * reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f) + (-1.0 * reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc));
	
% Species:   id = mw80848184_e2dd_47ce_86d7_7a21479342bd, name = gp130, affected by kineticLaw
	xdot(9) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_6) + (-1.0 * reaction_reaction_8) + ( 1.0 * reaction_mw391f3b8e_5649_4851_b2e2_782cb3e015b6) + (-1.0 * reaction_mw4a00a3a4_778f_4952_8100_2dc3cc2b7046));
	
% Species:   id = mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a, name = R_IL6_gp130, affected by kineticLaw
	xdot(10) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_6) + ( 1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_12) + ( 1.0 * reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4));
	
% Species:   id = mw4638f126_8cb8_4021_ab41_6ae195743ba0, name = sR_IL6, affected by kineticLaw
	xdot(11) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_6) + ( 1.0 * reaction_mw8e8b65a8_6830_4091_9a40_19645e8fe554) + ( 1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88) + (-1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6) + (-1.0 * reaction_mwb341c690_7147_46a1_8577_201598de3bf1));
	
% Species:   id = mw10315fa3_6f13_4618_bda8_a8694bd3c374, name = R, affected by kineticLaw
	xdot(12) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_15) + ( 1.0 * reaction_reaction_14));
	
% Species:   id = mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1, name = IL6, affected by kineticLaw
	xdot(13) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_7) + ( 1.0 * reaction_mw1046000b_e1e8_4f6f_82a1_532d2aa793bb) + (-1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88));
	
% Species:   id = mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83, name = R_IL6, affected by kineticLaw
	xdot(14) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_7) + (-1.0 * reaction_reaction_8) + (-1.0 * reaction_reaction_11));
	
% Species:   id = mw0eb6c959_d408_45a0_a450_928b8c5876bb, name = Ractive, affected by kineticLaw
	xdot(15) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_16) + (-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_13) + (-1.0 * reaction_mwb675e13a_26c0_4b18_a8c3_0f5a62090ba4));
	
% Species:   id = mw42054cd7_17af_46da_970c_7f99151906ad, name = STAT3, affected by kineticLaw
	xdot(16) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_reaction_9) + ( 1.0 * reaction_reaction_10));
	
% Species:   id = mw39c2e431_fdc3_4964_be29_6ca856620b1b, name = pSTAT3, affected by kineticLaw
	xdot(17) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_reaction_9) + (-1.0 * reaction_reaction_10));
	
% Species:   id = mwd5313618_89eb_4c8c_bc82_66f10f966349, name = CRP, involved in a rule 	xdot(18) = x(18);
	
% Species:   id = mw2e464cf3_a09c_4b7c_9f3c_06720016a48e, name = sR, affected by kineticLaw
	xdot(19) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mw12a9fa7e_a273_4c1e_b970_ed33f3a9a705) + (-1.0 * reaction_mwa812f08f_1035_42bd_82d2_72d691308f88));
	
% Species:   id = mw36ea78c1_ed71_4def_96d3_857a442d7195, name = CRPExtracellular, affected by kineticLaw
	xdot(20) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mwab0012ac_e5f2_4904_9893_820fd210402e) + ( 1.0 * reaction_mwcdc24bd4_d9e4_47fe_8300_d222d853111c));
	
% Species:   id = mw147d30ec_478e_4090_b496_128a131d29eb, name = sgp130, affected by kineticLaw
	xdot(21) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mw7b56053c_7256_4703_a8c3_4fd46b2c23d0) + (-1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6));
	
% Species:   id = mwab41493c_6349_45f1_a226_3030cfed0e06, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(22) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mwd77df15b_fed7_41a8_a3d6_b0f6c590c5f6) + ( 1.0 * reaction_mwae5dbb44_7de5_46ab_8c20_ac4f8956b0f0));
	
% Species:   id = mw1d9426a3_e1e9_49e0_ad77_eb6833be398a, name = sR_IL6_sgpFc, affected by kineticLaw
	xdot(23) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*(( 1.0 * reaction_mwb341c690_7147_46a1_8577_201598de3bf1) + (-1.0 * reaction_mw5d9fcd0c_ca08_4444_b509_2ea4777e0025) + ( 1.0 * reaction_mwb62106e7_e959_4a1d_9a00_b36d4e19a48f));
	
% Species:   id = mw3667a5e1_02c9_44a0_acb4_b0431faa822d, name = sgpFc, affected by kineticLaw
	xdot(24) = (1/(compartment_mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e))*((-1.0 * reaction_mwb341c690_7147_46a1_8577_201598de3bf1) + ( 1.0 * reaction_mw131e3c9d_e77d_48c0_bdbb_77b2c10aaf3d) + (-1.0 * reaction_mw2ae288ab_7d03_4a84_a024_c711ad2b77e6));
	
% Species:   id = mw7becb5fe_8da8_4285_a821_0d77ad811b62, name = sR_IL6, affected by kineticLaw
	xdot(25) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd) + ( 1.0 * reaction_mwbe8567ce_3349_4442_8b12_53cd9bc168e7) + (-1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c) + (-1.0 * reaction_mw1d3068d7_5679_41ee_9892_984e33012070));
	
% Species:   id = mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca, name = gp130, affected by kineticLaw
	xdot(26) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_41) + ( 1.0 * reaction_mw6db30657_4e56_4c3a_8575_9c67393dde4f) + (-1.0 * reaction_mw6f470e13_f0e4_4294_83d8_59dd5670d10c));
	
% Species:   id = mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9, name = R_IL6_gp130, affected by kineticLaw
	xdot(27) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_41) + (-1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_44) + ( 1.0 * reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6));
	
% Species:   id = mw6cce2109_0e32_4dd9_98ec_41173e8ef07d, name = Ractive, affected by kineticLaw
	xdot(28) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_46) + (-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_45) + (-1.0 * reaction_mw64df7c9e_35da_4c7f_be56_c5dabfb060b6));
	
% Species:   id = mw2b255f94_8018_4b99_bde8_918eeac45446, name = STAT3, affected by kineticLaw
	xdot(29) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_reaction_42) + ( 1.0 * reaction_reaction_43));
	
% Species:   id = mw48867e93_f170_44e8_ac7a_185b23e1bf3b, name = pSTAT3, affected by kineticLaw
	xdot(30) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_reaction_42) + (-1.0 * reaction_reaction_43));
	
% Species:   id = mw0083d743_836f_4238_a17f_4602193d5bc0, name = geneProduct, involved in a rule 	xdot(31) = x(31);
	
% Species:   id = mwd31f52cc_04e7_40e0_885f_c7b2d9e62215, name = sR, affected by kineticLaw
	xdot(32) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mwfb35eca9_7afc_4ba8_a46c_738cab57eb9f) + (-1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd));
	
% Species:   id = mw2c9b0499_3325_4394_8af3_bbf653a944a0, name = IL6, affected by kineticLaw
	xdot(33) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw61d2af92_6da5_41ce_b90e_aa6f430e6ba1) + (-1.0 * reaction_mw4c099d5c_200f_474e_8ec1_59e9223a8afd) + ( 1.0 * reaction_mw1ce0c484_681f_4d85_8ffe_392d0c100cfa) + (-1.0 * reaction_mwf913ea0b_785a_4701_ac91_b18ab5dd5a89));
	
% Species:   id = mwd65b5b39_dc1b_4e77_a999_67277a880e5e, name = sgp130, affected by kineticLaw
	xdot(34) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw1c5a5ff7_5130_490f_a740_6a744ccf8a94) + (-1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c));
	
% Species:   id = mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3, name = sR_IL6_sgp130, affected by kineticLaw
	xdot(35) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*(( 1.0 * reaction_mw8be158f1_ea81_45bf_80d4_6e31cd83fe6c) + ( 1.0 * reaction_mw01babcdf_0f03_46b0_81b1_201cc846e361));
	
% Species:   id = mwf7796221_1fea_4274_a93e_c00adbf5778c, name = sgpFc, affected by kineticLaw
	xdot(36) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_mw1d3068d7_5679_41ee_9892_984e33012070) + ( 1.0 * reaction_mw14940d1f_6a1f_47cb_8170_801ba645f4c1) + (-1.0 * reaction_mw9629d028_fcc0_4886_9e4d_36eecdb0381d));
	
% Species:   id = mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296, name = sR_IL6_sgpFc, affected by kineticLaw
	xdot(37) = (1/(compartment_mwe9501423_9fb4_494b_b5b6_288f3fcb17b5))*((-1.0 * reaction_mw5be6711a_526a_4a58_80c6_d353dcabdf87) + ( 1.0 * reaction_mw1d3068d7_5679_41ee_9892_984e33012070) + ( 1.0 * reaction_mwad648b6c_45ca_4f41_9747_06db1f6060fc));
	
% Species:   id = mwbc2f5464_81e5_43fd_8b39_f5a2756af72f, name = sgpFc, affected by kineticLaw
	xdot(38) = (1/(compartment_mw8fbcbf3b_47d8_4adc_8ad4_f9fc547d3e87))*(( 1.0 * reaction_mwdf4ba845_7271_4ada_b43f_fdac83df3b5c));
	
% Species:   id = species_1, name = CRP Suppression (%), involved in a rule 	xdot(39) = x(39);
end

function z=function_4(kIL6Decay,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwf626e95e_543f_41e4_aad4_c6bf60ab345b), z=(kIL6Decay*mwf626e95e_543f_41e4_aad4_c6bf60ab345b/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_5(kCRPDecay,mw114aa90f_5f5b_4fe8_9406_361c8489b6a1,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(kCRPDecay*mw114aa90f_5f5b_4fe8_9406_361c8489b6a1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_9(kRAct,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=(kRAct*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_1(kRLOff,kRLOn,mw03db56ac_8dc6_4931_ae82_fef706d2ee3d,mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwf626e95e_543f_41e4_aad4_c6bf60ab345b), z=((kRLOn*mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc*mwf626e95e_543f_41e4_aad4_c6bf60ab345b-kRLOff*mw03db56ac_8dc6_4931_ae82_fef706d2ee3d)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_3(kIL6Synth,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(kIL6Synth/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_6(kgp130Off,kgp130On,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=((kgp130On*mw4638f126_8cb8_4021_ab41_6ae195743ba0*mw80848184_e2dd_47ce_86d7_7a21479342bd-kgp130Off*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_18(kRAct,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRAct*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_19(mw2b255f94_8018_4b99_bde8_918eeac45446,mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mw9442cd0e_4d7c_4ba6_a695_f84919bdf569,mwe8fc1900_f07d_468b_b5c8_15400a583c3d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mw9442cd0e_4d7c_4ba6_a695_f84919bdf569*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d*mw2b255f94_8018_4b99_bde8_918eeac45446/(mwe8fc1900_f07d_468b_b5c8_15400a583c3d+mw2b255f94_8018_4b99_bde8_918eeac45446)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_20(mw48867e93_f170_44e8_ac7a_185b23e1bf3b,mwd36b0261_2480_4cab_9222_2cf8fb0e65dc,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwfd291862_195f_4979_94b5_b4e5ae1b7d52), z=(mwd36b0261_2480_4cab_9222_2cf8fb0e65dc*mw48867e93_f170_44e8_ac7a_185b23e1bf3b/(mwfd291862_195f_4979_94b5_b4e5ae1b7d52+mw48867e93_f170_44e8_ac7a_185b23e1bf3b)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_21(kRint,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRint*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_22(mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a), z=(mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_23(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw1667a8e0_9d20_4e59_ba51_596148aba787,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8), z=(mw1667a8e0_9d20_4e59_ba51_596148aba787*mw0eb6c959_d408_45a0_a450_928b8c5876bb/(mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8+mw0eb6c959_d408_45a0_a450_928b8c5876bb)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_24(mw1667a8e0_9d20_4e59_ba51_596148aba787,mw6cce2109_0e32_4dd9_98ec_41173e8ef07d,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8), z=(mw1667a8e0_9d20_4e59_ba51_596148aba787*mw6cce2109_0e32_4dd9_98ec_41173e8ef07d/(mwfcf06900_5f2f_4bb3_bb1f_12023612b8a8+mw6cce2109_0e32_4dd9_98ec_41173e8ef07d)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_25(kRsynth,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRsynth/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_26(kRdeg,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRdeg*mw80848184_e2dd_47ce_86d7_7a21479342bd/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_2(kgp130Off,kgp130On,mw03db56ac_8dc6_4931_ae82_fef706d2ee3d,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw810ff751_fa4e_4143_bd50_169b3e325e1e,mwbbbce920_e8dd_4320_9386_fc94bfb2fc99), z=((kgp130On*mw03db56ac_8dc6_4931_ae82_fef706d2ee3d*mwbbbce920_e8dd_4320_9386_fc94bfb2fc99-kgp130Off*mw810ff751_fa4e_4143_bd50_169b3e325e1e)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_7(kRLOff,kRLOn,mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1,mw10315fa3_6f13_4618_bda8_a8694bd3c374,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=((kRLOn*mw10315fa3_6f13_4618_bda8_a8694bd3c374*mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1-kRLOff*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_27(kRsynth,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRsynth/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_28(kRdeg,mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(kRdeg*mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_29(kRLOff,kRLOn,mw2c9b0499_3325_4394_8af3_bbf653a944a0,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mwd31f52cc_04e7_40e0_885f_c7b2d9e62215,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kRLOn*mwd31f52cc_04e7_40e0_885f_c7b2d9e62215*mw2c9b0499_3325_4394_8af3_bbf653a944a0-kRLOff*mw7becb5fe_8da8_4285_a821_0d77ad811b62)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_30(kRLOff,kRLOn,mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1,mw2e464cf3_a09c_4b7c_9f3c_06720016a48e,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=((kRLOn*mw2e464cf3_a09c_4b7c_9f3c_06720016a48e*mw0adf3eb4_a196_4c48_b10d_4e9e9faaf9e1-kRLOff*mw4638f126_8cb8_4021_ab41_6ae195743ba0)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_31(mw862f1480_c60c_4863_a565_b2c1c77e238e,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd5313618_89eb_4c8c_bc82_66f10f966349), z=(mw862f1480_c60c_4863_a565_b2c1c77e238e*mwd5313618_89eb_4c8c_bc82_66f10f966349/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_32(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1), z=(mw65c85954_5ca0_4df2_9e22_ff2aa3fbe3f1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_8(kgp130Off,kgp130On,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw80848184_e2dd_47ce_86d7_7a21479342bd,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=((kgp130On*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83*mw80848184_e2dd_47ce_86d7_7a21479342bd-kgp130Off*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_13(kRint,mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRint*mw7d86cc23_a1af_44c3_bdb9_71e9b1bb2a83/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_14(kRint,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a), z=(kRint*mwd2d9d93a_3bd1_4f17_bac1_baba9ef2d55a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_15(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a), z=(mwf44f7f27_5bb1_4c7f_8964_560fa5e1743a*mw0eb6c959_d408_45a0_a450_928b8c5876bb/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_16(kRsynth,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRsynth/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_17(kgp130Off,kgp130On,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9,mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kgp130On*mw7becb5fe_8da8_4285_a821_0d77ad811b62*mw8c9107e6_f51d_442d_b2dc_2bfdbb8482ca-kgp130Off*mw824bc3d4_1ac3_4912_9b51_8f14ff1c96b9)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_43(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwa2d8dd1c_bb9a_4552_8738_e24671651c1d,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwa2d8dd1c_bb9a_4552_8738_e24671651c1d/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_44(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwf345ed7a_0622_403c_b816_c8749a2c9ded), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwf345ed7a_0622_403c_b816_c8749a2c9ded/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_45(mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_46(kgp130Off,kgp130On,mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf7796221_1fea_4274_a93e_c00adbf5778c), z=((kgp130On*mwf7796221_1fea_4274_a93e_c00adbf5778c*mw7becb5fe_8da8_4285_a821_0d77ad811b62-kgp130Off*mw2f3d48e0_c9c4_4a0e_aca3_9241eb573296)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_47(kgp130Off,kgp130On,mw1d9426a3_e1e9_49e0_ad77_eb6833be398a,mw3667a5e1_02c9_44a0_acb4_b0431faa822d,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=((kgp130On*mw3667a5e1_02c9_44a0_acb4_b0431faa822d*mw4638f126_8cb8_4021_ab41_6ae195743ba0-kgp130Off*mw1d9426a3_e1e9_49e0_ad77_eb6833be398a)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_48(mw1d9426a3_e1e9_49e0_ad77_eb6833be398a,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw1d9426a3_e1e9_49e0_ad77_eb6833be398a/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_49(mw3667a5e1_02c9_44a0_acb4_b0431faa822d,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mw3667a5e1_02c9_44a0_acb4_b0431faa822d/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_50(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5,mwf7796221_1fea_4274_a93e_c00adbf5778c), z=(mwbd1d5bc3_d4b9_4aec_9b86_6f776da20a30*mwf7796221_1fea_4274_a93e_c00adbf5778c/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_33(kgp130Off,kgp130On,mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3,mw7becb5fe_8da8_4285_a821_0d77ad811b62,mwd65b5b39_dc1b_4e77_a999_67277a880e5e,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=((kgp130On*mwd65b5b39_dc1b_4e77_a999_67277a880e5e*mw7becb5fe_8da8_4285_a821_0d77ad811b62-kgp130Off*mw6335d5d7_c7b0_4bc0_b883_f7ee4915c2c3)/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_34(kgp130Off,kgp130On,mw147d30ec_478e_4090_b496_128a131d29eb,mw4638f126_8cb8_4021_ab41_6ae195743ba0,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwab41493c_6349_45f1_a226_3030cfed0e06), z=((kgp130On*mw4638f126_8cb8_4021_ab41_6ae195743ba0*mw147d30ec_478e_4090_b496_128a131d29eb-kgp130Off*mwab41493c_6349_45f1_a226_3030cfed0e06)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_35(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab), z=(mwc4c58db7_5535_4590_aaa5_bbc8ed53cdab/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_36(mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw88a75379_f9a1_4acc_baeb_94c32bb736a5), z=(mw88a75379_f9a1_4acc_baeb_94c32bb736a5*mw30ae63db_6cd3_4b6f_93ad_3350cd360bcc/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_37(mw1f41474c_c399_4a60_a53a_9926dd092e8d,mw53ffe9e6_beef_45c4_90a5_a79197ed506e), z=(mw1f41474c_c399_4a60_a53a_9926dd092e8d/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_38(mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwbbbce920_e8dd_4320_9386_fc94bfb2fc99,mwbcb5a310_9b67_405e_89ec_43d25e8cc93d), z=(mwbcb5a310_9b67_405e_89ec_43d25e8cc93d*mwbbbce920_e8dd_4320_9386_fc94bfb2fc99/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_39(mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mwa8d72918_f6c2_4d81_bf3b_fc2b464d5e69/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_40(mw06241335_b5f2_47ed_bdcc_ef77b68a2b98,mw2c9b0499_3325_4394_8af3_bbf653a944a0,mwe9501423_9fb4_494b_b5b6_288f3fcb17b5), z=(mw06241335_b5f2_47ed_bdcc_ef77b68a2b98*mw2c9b0499_3325_4394_8af3_bbf653a944a0/mwe9501423_9fb4_494b_b5b6_288f3fcb17b5);end

function z=function_41(mw114aa90f_5f5b_4fe8_9406_361c8489b6a1,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mw5832a2dc_ee18_44df_aa59_ccb21cb74df2), z=(mw5832a2dc_ee18_44df_aa59_ccb21cb74df2*mw114aa90f_5f5b_4fe8_9406_361c8489b6a1/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_42(kgp130Off,kgp130On,mw03db56ac_8dc6_4931_ae82_fef706d2ee3d,mw53ffe9e6_beef_45c4_90a5_a79197ed506e,mwa2d8dd1c_bb9a_4552_8738_e24671651c1d,mwf345ed7a_0622_403c_b816_c8749a2c9ded), z=((kgp130On*mwf345ed7a_0622_403c_b816_c8749a2c9ded*mw03db56ac_8dc6_4931_ae82_fef706d2ee3d-kgp130Off*mwa2d8dd1c_bb9a_4552_8738_e24671651c1d)/mw53ffe9e6_beef_45c4_90a5_a79197ed506e);end

function z=function_10(mw0eb6c959_d408_45a0_a450_928b8c5876bb,mw42054cd7_17af_46da_970c_7f99151906ad,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mw9442cd0e_4d7c_4ba6_a695_f84919bdf569,mwe8fc1900_f07d_468b_b5c8_15400a583c3d), z=(mw9442cd0e_4d7c_4ba6_a695_f84919bdf569*mw0eb6c959_d408_45a0_a450_928b8c5876bb*mw42054cd7_17af_46da_970c_7f99151906ad/(mwe8fc1900_f07d_468b_b5c8_15400a583c3d+mw42054cd7_17af_46da_970c_7f99151906ad)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_11(mw39c2e431_fdc3_4964_be29_6ca856620b1b,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e,mwd36b0261_2480_4cab_9222_2cf8fb0e65dc,mwfd291862_195f_4979_94b5_b4e5ae1b7d52), z=(mwd36b0261_2480_4cab_9222_2cf8fb0e65dc*mw39c2e431_fdc3_4964_be29_6ca856620b1b/(mwfd291862_195f_4979_94b5_b4e5ae1b7d52+mw39c2e431_fdc3_4964_be29_6ca856620b1b)/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

function z=function_12(kRdeg,mw10315fa3_6f13_4618_bda8_a8694bd3c374,mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e), z=(kRdeg*mw10315fa3_6f13_4618_bda8_a8694bd3c374/mw88ca8d9a_f5cf_41bf_9d9d_fc48f6e1a19e);end

% adding few functions representing operators used in SBML but not present directly 
% in either matlab or octave. 
function z=pow(x,y),z=x^y;end
function z=root(x,y),z=y^(1/x);end
function z = piecewise(varargin)
	numArgs = nargin;
	result = 0;
	foundResult = 0;
	for k=1:2: numArgs-1
		if varargin{k+1} == 1
			result = varargin{k};
			foundResult = 1;
			break;
		end
	end
	if foundResult == 0
		result = varargin{numArgs};
	end
	z = result;
end


