% This file works with MATLAB and is automatically generated with 
% the System Biology Format Converter (http://sbfc.sourceforge.net/)
% from an SBML file. 
% To run this file with Octave you must edit the comments providing
% the definition of the ode solver and the signature for the 
% xdot function.
%
% The conversion system has the following limitations:
%  - You may have to re order some reactions and Assignment Rules definition
%  - Delays are not taken into account
%  - You should change the lsode parameters (start, end, steps) to get better results
%

%
% Model name = Obeyesekere1999_CellCycle
%
% is http://identifiers.org/biomodels.db/MODEL3896909694
% is http://identifiers.org/biomodels.db/BIOMD0000000168
% isDescribedBy http://identifiers.org/pubmed/17886749
% isDerivedFrom http://identifiers.org/pubmed/9375029
%


function main()
%Initial conditions vector
	x0=zeros(7,1);
	x0(1) = 0.1;
	x0(2) = 0.6;
	x0(3) = 1.0;
	x0(4) = 0.5;
	x0(5) = 0.7;
	x0(6) = 0;
	x0(7) = 0;


% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
	tspan=[0:0.01:100];
	opts = odeset('AbsTol',1e-3);
	[t,x]=ode23tb(@f,tspan,x0,opts);
% End Matlab code

% Start Octave code
%	t=linspace(0,100,100);
%	x=lsode('f',x0,t);
% End Octave code


	plot(t,x);
end



% Depending on whether you are using Octave or Matlab,
% you should comment / uncomment one of the following blocks.
% This should also be done for the definition of the function f below.
% Start Matlab code
function xdot=f(t,x)
% End Matlab code

% Start Octave code
%function xdot=f(x,t)
% End Octave code

% Compartment: id = cell_1, name = cell, constant
	compartment_cell_1=1.0;
% Parameter:   id =  aD_1, name = aD
	global_par_aD_1=0.4;
% Parameter:   id =  k_1, name = k
	global_par_k_1=0.05;
% Parameter:   id =  GF_1, name = GF
	global_par_GF_1=6.3;
% Parameter:   id =  dD_1, name = dD
	global_par_dD_1=0.4;
% Parameter:   id =  aE_1, name = aE
	global_par_aE_1=0.16;
% Parameter:   id =  af_1, name = af
	global_par_af_1=0.9;
% Parameter:   id =  theta_1, name = theta
	global_par_theta_1=1.5;
% Parameter:   id =  dE_1, name = dE
	global_par_dE_1=0.2;
% Parameter:   id =  pX_1, name = pX
	global_par_pX_1=0.48;
% Parameter:   id =  RT_1, name = RT
	global_par_RT_1=2.5;
% Parameter:   id =  pS_1, name = pS
	global_par_pS_1=0.6;
% Parameter:   id =  pD_1, name = pD
	global_par_pD_1=0.48;
% Parameter:   id =  qD_1, name = qD
	global_par_qD_1=0.6;
% Parameter:   id =  pE_1, name = pE
	global_par_pE_1=0.096;
% Parameter:   id =  qE_1, name = qE
	global_par_qE_1=0.6;
% Parameter:   id =  aX_1, name = aX
	global_par_aX_1=0.08;
% Parameter:   id =  f_1, name = f
	global_par_f_1=0.2;
% Parameter:   id =  g_1, name = g
	global_par_g_1=0.528;
% Parameter:   id =  dX_1, name = dX
	global_par_dX_1=1.04;
% Parameter:   id =  qX_1, name = qX
	global_par_qX_1=0.8;
% Parameter:   id =  unpho_RB, name = unpho_RB
% assignmentRule: variable = E2F_1
	x(6)=global_par_theta_1-x(3);
% assignmentRule: variable = RP_1
	x(7)=global_par_RT_1-x(3)-x(4);
% assignmentRule: variable = unpho_RB
	global_par_unpho_RB=x(4)+x(3);

% Reaction: id = _1, name = cycD/CDK4 synthesis
	reaction__1=global_par_aD_1*global_par_k_1*global_par_GF_1/(1+global_par_k_1*global_par_GF_1);

% Reaction: id = cyclinCDK4degradation_1, name = cycD/CDK4 degradation
	reaction_cyclinCDK4degradation_1=global_par_dD_1*x(2)*x(1);

% Reaction: id = cyclin_1, name = cycE/CDK2 synthesis
	reaction_cyclin_1=global_par_aE_1*(1+global_par_af_1*x(6));

% Reaction: id = cycECDK2degradation_1, name = cycE/CDK2 degradation
	reaction_cycECDK2degradation_1=global_par_dE_1*x(5)*x(2);

% Reaction: id = pRBpdephosphorylation_1, name = pRB-p dephosphorilation
	reaction_pRBpdephosphorylation_1=global_par_pX_1*x(7)*x(5)/(global_par_qX_1+x(7)+x(5));

% Reaction: id = pRBE2Fcomplexassociation_1, name = pRB/E2F complex association
	reaction_pRBE2Fcomplexassociation_1=global_par_pS_1*x(6)*x(4);

% Reaction: id = pRBE2FcomplexdeassociationviacycDCDK4_1, name = pRB/E2F complex deassociation via cycD/CDK4
	reaction_pRBE2FcomplexdeassociationviacycDCDK4_1=global_par_pD_1*x(3)*x(1)/(global_par_qD_1+x(3)+x(1));

% Reaction: id = _7, name = pRB/E2F complex deassociation via cycE/CDK2
	reaction__7=global_par_pE_1*x(3)*x(2)/(global_par_qE_1+x(3)+x(2));

% Reaction: id = cycleprogression_1, name = cycle progression
	reaction_cycleprogression_1=global_par_aX_1*x(2)+global_par_f_1*x(6)+global_par_g_1*x(5)^2*x(2);

% Reaction: id = cyclebreak_1, name = cycle break
	reaction_cyclebreak_1=global_par_dX_1*x(5);

	xdot=zeros(7,1);
	
% Species:   id = D_1, name = D, affected by kineticLaw
	xdot(1) = (1/(compartment_cell_1))*(( 1.0 * reaction__1) + (-1.0 * reaction_cyclinCDK4degradation_1));
	
% Species:   id = E_1, name = E, affected by kineticLaw
	xdot(2) = (1/(compartment_cell_1))*(( 1.0 * reaction_cyclin_1) + (-1.0 * reaction_cycECDK2degradation_1));
	
% Species:   id = RS_1, name = RS, affected by kineticLaw
	xdot(3) = (1/(compartment_cell_1))*(( 1.0 * reaction_pRBE2Fcomplexassociation_1) + (-1.0 * reaction_pRBE2FcomplexdeassociationviacycDCDK4_1) + (-1.0 * reaction__7));
	
% Species:   id = R_1, name = R, affected by kineticLaw
	xdot(4) = (1/(compartment_cell_1))*(( 1.0 * reaction_pRBpdephosphorylation_1) + (-1.0 * reaction_pRBE2Fcomplexassociation_1));
	
% Species:   id = X_1, name = X, affected by kineticLaw
	xdot(5) = (1/(compartment_cell_1))*(( 1.0 * reaction_cycleprogression_1) + (-1.0 * reaction_cyclebreak_1));
	
% Species:   id = E2F_1, name = E2F, defined in a rule 	xdot(6) = x(6);
	
% Species:   id = RP_1, name = RP, defined in a rule 	xdot(7) = x(7);
end

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


