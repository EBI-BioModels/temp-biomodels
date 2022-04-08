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
% Model name = Bakshi2020 - Truncated minimal model of alternative pathway of complement system
%
% is http://identifiers.org/biomodels.db/MODEL2107190002
% is http://identifiers.org/biomodels.db/BIOMD0000001016
%


function main()
%Initial conditions vector
	x0=zeros(8,1);
	x0(1) = 6.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 0.0;
	x0(7) = 2.0;
	x0(8) = 0.08;


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

% Compartment: id = Fluid_phase, name = Fluid_phase, constant
	compartment_Fluid_phase=1.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0E-4;
% Parameter:   id =  k2, name = k2
	global_par_k2=107.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=5.86;
% Parameter:   id =  k4, name = k4
	global_par_k4=0.816;
% Parameter:   id =  k5, name = k5
	global_par_k5=6.9;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.46;
% Parameter:   id =  k7, name = k7
	global_par_k7=130.0;
% Parameter:   id =  k8, name = k8
	global_par_k8=0.72;
% Parameter:   id =  k9, name = k9
	global_par_k9=0.33;
% Parameter:   id =  k10, name = k10
	global_par_k10=0.1068;
% Parameter:   id =  ks1, name = ks1
	global_par_ks1=0.00316;
% Parameter:   id =  ks2, name = ks2
	global_par_ks2=7.89E-4;
% Parameter:   id =  d1, name = d1
	global_par_d1=3.92E-4;
% Parameter:   id =  d2, name = d2
	global_par_d2=3.33E-4;

% Reaction: id = C3_hydrolysis, name = C3_hydrolysis
	reaction_C3_hydrolysis=compartment_Fluid_phase*Rate_Law_for_C3_hydrolysis(global_par_k1, x(1), global_par_k2, x(5), global_par_k3);

% Reaction: id = C3bB_formation, name = C3bB_formation
	reaction_C3bB_formation=compartment_Fluid_phase*(global_par_k4*x(2)*x(7)-global_par_k5*x(3));

% Reaction: id = C3bB_conformational_change, name = C3bB_conformational_change
	reaction_C3bB_conformational_change=compartment_Fluid_phase*(global_par_k9*x(3)-global_par_k10*x(4));

% Reaction: id = C3_convertase_formation, name = C3_convertase_formation
	reaction_C3_convertase_formation=compartment_Fluid_phase*Rate_Law_for_C3_convertase_formation(global_par_k7, x(8), x(4), global_par_k8);

% Reaction: id = C3_convertase_decay, name = C3_convertase_decay
	reaction_C3_convertase_decay=compartment_Fluid_phase*global_par_k6*x(5);

% Reaction: id = C3_degradation, name = C3_degradation
	reaction_C3_degradation=compartment_Fluid_phase*global_par_d1*x(1);

% Reaction: id = Factor_B_degradation, name = Factor_B_degradation
	reaction_Factor_B_degradation=compartment_Fluid_phase*global_par_d2*x(7);

	xdot=zeros(8,1);
	
% Species:   id = C3, name = C3, affected by kineticLaw
	xdot(1) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3_hydrolysis) + ( 1.0 * reaction_C3_synthesis) + (-1.0 * reaction_C3_degradation));
	
% Species:   id = C3b, name = C3b, affected by kineticLaw
	xdot(2) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3_hydrolysis) + (-1.0 * reaction_C3bB_formation) + ( 1.0 * reaction_C3_convertase_decay));
	
% Species:   id = C3bB_closed, name = C3bB_closed, affected by kineticLaw
	xdot(3) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bB_formation) + (-1.0 * reaction_C3bB_conformational_change));
	
% Species:   id = C3bB_open, name = C3bB_open, affected by kineticLaw
	xdot(4) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3bB_conformational_change) + (-1.0 * reaction_C3_convertase_formation));
	
% Species:   id = C3bBb, name = C3bBb, affected by kineticLaw
	xdot(5) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3_convertase_formation) + (-1.0 * reaction_C3_convertase_decay));
	
% Species:   id = Bb, name = Bb, affected by kineticLaw
	xdot(6) = (1/(compartment_Fluid_phase))*(( 1.0 * reaction_C3_convertase_decay));
	
% Species:   id = Factor_B, name = Factor_B, affected by kineticLaw
	xdot(7) = (1/(compartment_Fluid_phase))*((-1.0 * reaction_C3bB_formation) + ( 1.0 * reaction_Factor_B_synthesis) + (-1.0 * reaction_Factor_B_degradation));
	
% Species:   id = Factor_D, name = Factor_D
% Warning species is not changed by either rules or reactions
	xdot(8) = ;
end

function z=Constant_flux__irreversible(v), z=(v);end

function z=Rate_Law_for_C3_hydrolysis(k1,C3,k2,C3bBb,k3), z=(k1*C3+k2*C3bBb*C3/(k3+C3));end

function z=Rate_Law_for_C3_convertase_formation(k7,FD,C3bB_open,k8), z=(k7*FD*C3bB_open/(k8+C3bB_open));end

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


