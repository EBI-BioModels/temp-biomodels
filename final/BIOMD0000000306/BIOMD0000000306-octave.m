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
% Model name = Tyson2003_Activator_Inhibitor
%
% is http://identifiers.org/biomodels.db/MODEL1102100005
% is http://identifiers.org/biomodels.db/BIOMD0000000306
% isDescribedBy http://identifiers.org/pubmed/12648679
%


function main()
%Initial conditions vector
	x0=zeros(5,1);
	x0(1) = 0.0;
	x0(2) = 0.0;
	x0(3) = 0.0;
	x0(4) = 0;
	x0(5) = 0;


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

% Compartment: id = env, name = env, constant
	compartment_env=1.0;
% Parameter:   id =  k0, name = k0
	global_par_k0=4.0;
% Parameter:   id =  k1, name = k1
	global_par_k1=1.0;
% Parameter:   id =  k2, name = k2
	global_par_k2=1.0;
% Parameter:   id =  k2_prime, name = k2_prime
	global_par_k2_prime=1.0;
% Parameter:   id =  k3, name = k3
	global_par_k3=1.0;
% Parameter:   id =  J3, name = J3
	global_par_J3=0.3;
% Parameter:   id =  k4, name = k4
	global_par_k4=1.0;
% Parameter:   id =  J4, name = J4
	global_par_J4=0.3;
% Parameter:   id =  k5, name = k5
	global_par_k5=0.1;
% Parameter:   id =  k6, name = k6
	global_par_k6=0.075;
% Parameter:   id =  Et, name = Et
	global_par_Et=1.0;
% Parameter:   id =  Km3, name = Km3
% Parameter:   id =  Km4, name = Km4
% assignmentRule: variable = Km3
	global_par_Km3=global_par_J3*global_par_Et;
% assignmentRule: variable = Km4
	global_par_Km4=global_par_J4*global_par_Et;
% assignmentRule: variable = E
	x(4)=global_par_Et-x(5);
% assignmentRule: variable = Ep
	x(5)=goldbeter_koshland(global_par_k3*x(1), global_par_k4, global_par_J3, global_par_J4)*global_par_Et;

% Reaction: id = r0
	reaction_r0=compartment_env*global_par_k0*x(5);

% Reaction: id = r1
	reaction_r1=compartment_env*global_par_k1*x(3);

% Reaction: id = r2
	reaction_r2=compartment_env*global_par_k2*x(1);

% Reaction: id = r2_prime
	reaction_r2_prime=compartment_env*global_par_k2_prime*x(1)*x(2);

% Reaction: id = r3
	reaction_r3=compartment_env*global_par_k3*x(1)*x(4)/(global_par_Km3+x(4));

% Reaction: id = r4
	reaction_r4=compartment_env*global_par_k4*x(5)/(global_par_Km4+x(5));

% Reaction: id = r5
	reaction_r5=compartment_env*global_par_k5*x(1);

% Reaction: id = r6
	reaction_r6=compartment_env*global_par_k6*x(2);

	xdot=zeros(5,1);
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(1) = (1/(compartment_env))*(( 1.0 * reaction_r0) + ( 1.0 * reaction_r1) + (-1.0 * reaction_r2) + (-1.0 * reaction_r2_prime));
	
% Species:   id = X, name = X, affected by kineticLaw
	xdot(2) = (1/(compartment_env))*(( 1.0 * reaction_r5) + (-1.0 * reaction_r6));
	
% Species:   id = S, name = S
%WARNING speciesID: S, constant= false  , boundaryCondition = true but is not involved in assignmentRule, rateRule or events !
	xdot(3) = 0.0;
	
% Species:   id = E, name = E, involved in a rule 	xdot(4) = x(4);
	
% Species:   id = Ep, name = Ep, involved in a rule 	xdot(5) = x(5);
end

function z=goldbeter_koshland(v1,v2,J1,J2), z=(2*v1*J2/(v2-v1+J1*v2+J2*v1+((v2-v1+J1*v2+J2*v1)^2-4*(v2-v1)*v1*J2)^(1/2)));end

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


