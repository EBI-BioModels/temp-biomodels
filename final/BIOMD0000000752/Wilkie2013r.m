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
% Model name = Wilkie2013r - immune-induced cancer dormancy and immune evasion-resistance
%
% isDescribedBy http://identifiers.org/pubmed/24511375
% is http://identifiers.org/biomodels.db/MODEL1907170001
% is http://identifiers.org/biomodels.db/BIOMD0000000752
%


function main()
%Initial conditions vector
	x0=zeros(3,1);
	x0(1) = 9000.0;
	x0(2) = 100.0;
	x0(3) = 1000.0;


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

% Compartment: id = tumor_microenvironment, name = tumor microenvironment, constant
	compartment_tumor_microenvironment=1.0;
% Parameter:   id =  a, name = a
	global_par_a=0.2;
% Parameter:   id =  K, name = K
	global_par_K=1.0E10;
% Parameter:   id =  a0, name = a0
	global_par_a0=1.0E-4;
% Parameter:   id =  y, name = y
	global_par_y=0.2;
% Parameter:   id =  Ie, name = Ie
	global_par_Ie=100.0;
% Parameter:   id =  u, name = u
	global_par_u=0.001;
% Parameter:   id =  b, name = b
	global_par_b=0.2;
% Parameter:   id =  b0, name = b0
% Parameter:   id =  f, name = f
	global_par_f=1.0;
% assignmentRule: variable = b0
	global_par_b0=global_par_a0*global_par_f;

% Reaction: id = immune_growth, name = immune growth
	reaction_immune_growth=compartment_tumor_microenvironment*growth_immune(global_par_y, x(2), global_par_Ie, global_par_u, x(1), x(3));

% Reaction: id = cancer_logistic_growth, name = cancer logistic growth
	reaction_cancer_logistic_growth=compartment_tumor_microenvironment*logistic_growth(global_par_K, global_par_a, x(3), x(1));

% Reaction: id = cancer_killing, name = cancer killing
	reaction_cancer_killing=compartment_tumor_microenvironment*killing(global_par_a0, x(1), x(2));

% Reaction: id = resistant_logistic_growth, name = resistant logistic growth
	reaction_resistant_logistic_growth=compartment_tumor_microenvironment*logistic_growth(global_par_K, global_par_b, x(1), x(3));

% Reaction: id = resistant_killing, name = resistant killing
	reaction_resistant_killing=compartment_tumor_microenvironment*killing(global_par_b0, x(3), x(2));

	xdot=zeros(3,1);
	
% Species:   id = C, name = C, affected by kineticLaw
	xdot(1) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_cancer_logistic_growth) + (-1.0 * reaction_cancer_killing));
	
% Species:   id = I, name = I, affected by kineticLaw
	xdot(2) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_immune_growth));
	
% Species:   id = R, name = R, affected by kineticLaw
	xdot(3) = (1/(compartment_tumor_microenvironment))*(( 1.0 * reaction_resistant_logistic_growth) + (-1.0 * reaction_resistant_killing));
end

function z=growth_immune(y,I,Ie,u,C,R), z=(y*I*(1-I/(Ie+u*(C+0.001*R)*I)));end

function z=killing(a0,C,I), z=(a0*C*I);end

function z=logistic_growth(K,k,mod,pro), z=(k*pro*(1-(pro+mod)/K));end

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


