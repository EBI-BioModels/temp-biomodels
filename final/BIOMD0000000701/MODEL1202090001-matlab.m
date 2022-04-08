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
% Model name = Caydasi2012_SPOC_HotSpotAssociation
%
% is http://identifiers.org/biomodels.db/MODEL1202090001
% isDescribedBy http://identifiers.org/doi/doi:10.1038/msb.2012.15
%


function main()
%Initial conditions vector
	x0=zeros(24,1);
	x0(1) = 8.33E-5;
	x0(2) = 1.66E-4;
	x0(3) = 2.03E-8;
	x0(4) = 0.0;
	x0(5) = 0.0;
	x0(6) = 4.91E-8;
	x0(7) = 7.99E-9;
	x0(8) = 8.33E-5;
	x0(9) = 0.0;
	x0(10) = 0.0;
	x0(11) = 0.0;
	x0(12) = 0.0;
	x0(13) = 0.0;
	x0(14) = 0.0;
	x0(15) = 0.0;
	x0(16) = 0.0;
	x0(17) = 0.0;
	x0(18) = 0.0;
	x0(19) = 0.0;
	x0(20) = 0.0;
	x0(21) = 0.0;
	x0(22) = 0.0;
	x0(23) = 0.0;
	x0(24) = 0.0;


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

% Compartment: id = default, name = default, constant
	compartment_default=1.0;
% Compartment: id = c2, name = Cytosol, constant
	compartment_c2=1.0E-13;
% Compartment: id = c3, name = SPB, constant
	compartment_c3=3.0E-18;
% Parameter:   id =  konB, name = konB
	global_par_konB=1250000.0;
% Parameter:   id =  koffB, name = koffB
	global_par_koffB=0.0012;
% Parameter:   id =  konB4, name = konB4
	global_par_konB4=20000.0;
% Parameter:   id =  koffB4, name = koffB4
	global_par_koffB4=0.0365;
% Parameter:   id =  konBT, name = konBT
	global_par_konBT=3.65E7;
% Parameter:   id =  konB4T, name = konB4T
	global_par_konB4T=3.65E7;
% Parameter:   id =  konB5T, name = konB5T
	global_par_konB5T=5500000.0;
% Parameter:   id =  koffBT, name = koffBT
	global_par_koffBT=0.183;
% Parameter:   id =  konT, name = konT
	global_par_konT=1250000.0;
% Parameter:   id =  koffT, name = koffT
	global_par_koffT=0.183;
% Parameter:   id =  kfKin4, name = kfKin4
	global_par_kfKin4=1000.0;
% Parameter:   id =  kfKin4Cyto, name = kfKin4Cyto
	global_par_kfKin4Cyto=0.09;
% Parameter:   id =  krKin4, name = krKin4
	global_par_krKin4=0.0251;
% Parameter:   id =  kfCdc5, name = kfCdc5
	global_par_kfCdc5=1.0;
% Parameter:   id =  krCdc5, name = krCdc5
	global_par_krCdc5=0.01;
% Parameter:   id =  khyd, name = khyd
	global_par_khyd=0.00224;
% Parameter:   id =  knex, name = knex
	global_par_knex=0.0136;
% Parameter:   id =  khydBT, name = khydBT
	global_par_khydBT=2.0;
% Parameter:   id =  khydB4T, name = khydB4T
	global_par_khydB4T=2.0;
% Parameter:   id =  u, name = u
	global_par_u=1.0;
% Parameter:   id =  alpha, name = alpha
	global_par_alpha=0.0;
% Parameter:   id =  active_Tem1_SPB, name = Active Tem1 at the SPB
% Parameter:   id =  active_Tem1_Cytosol, name = Active Tem1 in the cytosol
% Parameter:   id =  inactive_Tem1_SPB, name = Inactive Tem1 at the SPB
% Parameter:   id =  inactive_Tem1_Cytosol, name = Inactive Tem1 in the cytosol
% Parameter:   id =  active_Bfa1_SPB, name = Active Bfa1 at the SPB
% Parameter:   id =  active_Bfa1_Cytosol, name = Active Bfa1 in the cytosol
% Parameter:   id =  inactive_Bfa1_SPB, name = Inactive Bfa1 at the SPB
% Parameter:   id =  inactive_Bfa1_Cytosol, name = Inactive Bfa1 in the cytosol
% Parameter:   id =  total_Tem1_SPB, name = Total Tem1 at the SPB
% Parameter:   id =  total_Tem1_Cytosol, name = Total Tem1 in the Cytosol
% Parameter:   id =  total_Bfa1_SPB, name = Total Bfa1 at the SPB
% Parameter:   id =  total_Bfa1_Cytosol, name = Total Bfa1 in the Cytosol
% Parameter:   id =  NA, name = Avogadro's number
	global_par_NA=6.022E23;
% assignmentRule: variable = active_Tem1_SPB
	global_par_active_Tem1_SPB=(x(11)+x(13)+x(14)+x(15))*global_par_NA*compartment_c3;
% assignmentRule: variable = active_Tem1_Cytosol
	global_par_active_Tem1_Cytosol=(x(6)+x(19)+x(20)+x(21))*global_par_NA*compartment_c2;
% assignmentRule: variable = inactive_Tem1_SPB
	global_par_inactive_Tem1_SPB=(x(12)+x(16)+x(17)+x(18))*global_par_NA*compartment_c3;
% assignmentRule: variable = inactive_Tem1_Cytosol
	global_par_inactive_Tem1_Cytosol=(x(7)+x(22)+x(23)+x(24))*global_par_NA*compartment_c2;
% assignmentRule: variable = active_Bfa1_SPB
	global_par_active_Bfa1_SPB=(x(8)+x(13)+x(16)+x(9)+x(14)+x(17))*global_par_NA*compartment_c3;
% assignmentRule: variable = active_Bfa1_Cytosol
	global_par_active_Bfa1_Cytosol=(x(3)+x(19)+x(22)+x(4)+x(20)+x(23))*global_par_NA*compartment_c2;
% assignmentRule: variable = inactive_Bfa1_SPB
	global_par_inactive_Bfa1_SPB=(x(10)+x(15)+x(18))*global_par_NA*compartment_c3;
% assignmentRule: variable = inactive_Bfa1_Cytosol
	global_par_inactive_Bfa1_Cytosol=(x(5)+x(21)+x(24))*global_par_NA*compartment_c2;
% assignmentRule: variable = total_Tem1_SPB
	global_par_total_Tem1_SPB=global_par_active_Tem1_SPB+global_par_inactive_Tem1_SPB;
% assignmentRule: variable = total_Tem1_Cytosol
	global_par_total_Tem1_Cytosol=global_par_active_Tem1_Cytosol+global_par_inactive_Tem1_Cytosol;
% assignmentRule: variable = total_Bfa1_SPB
	global_par_total_Bfa1_SPB=global_par_active_Bfa1_SPB+global_par_inactive_Bfa1_SPB;
% assignmentRule: variable = total_Bfa1_Cytosol
	global_par_total_Bfa1_Cytosol=global_par_active_Bfa1_Cytosol+global_par_inactive_Bfa1_Cytosol;

% Reaction: id = R1, name = R1: Rev. SPB-association of Bfa1
	reaction_R1=compartment_c3*(global_par_konB*x(1)*x(3)-global_par_koffB*x(8));

% Reaction: id = R2, name = R2: Rev. SPB-association of Kin4-phosphorylated Bfa1
	reaction_R2=compartment_c3*(global_par_konB4*x(1)*x(4)-global_par_koffB4*x(9));

% Reaction: id = R3, name = R3: Rev. SPB-association of Cdc5-phosphorylated Bfa1
	reaction_R3=compartment_c3*(global_par_konB*x(1)*x(5)-global_par_koffB*x(10));

% Reaction: id = R4, name = R4: Rev. SPB-association of Bfa1-Tem1GTP complex
	reaction_R4=compartment_c3*(global_par_konB*x(1)*x(19)-global_par_koffB*x(13));

% Reaction: id = R5, name = R5: Rev. SPB-association of Kin4-phosphorylated Bfa1-Tem1GTP complex
	reaction_R5=compartment_c3*(global_par_konB4*x(20)*x(1)-global_par_koffB4*x(14));

% Reaction: id = R6, name = R6: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GTP complex
	reaction_R6=compartment_c3*(global_par_konB*x(1)*x(21)-global_par_koffB*x(15));

% Reaction: id = R7, name = R7: Rev. SPB-association of Bfa1-Tem1GDP complex
	reaction_R7=compartment_c3*(global_par_konB*x(1)*x(22)-global_par_koffB*x(16));

% Reaction: id = R8, name = R8: Rev.  SPB-association of Kin4 phosphorylated Bfa1-Tem1GDP complex
	reaction_R8=compartment_c3*(global_par_konB4*x(1)*x(23)-global_par_koffB4*x(17));

% Reaction: id = R9, name = R9: Rev. SPB-association of Cdc5-phosphorylated Bfa1-Tem1GDP complex
	reaction_R9=compartment_c3*(global_par_konB*x(1)*x(24)-global_par_koffB*x(18));

% Reaction: id = R10, name = R10: Rev. association of Tem1GTP with SPB-bound Bfa1
	reaction_R10=compartment_c3*(global_par_konBT*x(8)*x(6)-global_par_koffBT*x(13));

% Reaction: id = R11, name = R11: Rev. association of Tem1GTP with SPB-bound Kin4-phosphorylated Bfa1
	reaction_R11=compartment_c3*(global_par_konB4T*x(9)*x(6)-global_par_koffBT*x(14));

% Reaction: id = R12, name = R12: Rev. association of Tem1GTP with SPB-bound Cdc5-phosphorylated Bfa1
	reaction_R12=compartment_c3*(global_par_konB5T*x(10)*x(6)-global_par_koffBT*x(15));

% Reaction: id = R13, name = R13: Rev. association of Tem1GDP with SPB-bound Bfa1
	reaction_R13=compartment_c3*(global_par_konBT*x(8)*x(7)-global_par_koffBT*x(16));

% Reaction: id = R14, name = R14: Rev. association of Tem1GDP with SPB-bound Kin4-phosphorylated Bfa1
	reaction_R14=compartment_c3*(global_par_konB4T*x(9)*x(7)-global_par_koffBT*x(17));

% Reaction: id = R15, name = R15: Rev. association of Tem1GDP with SPB-bound Cdc5-phosphorylated Bfa1
	reaction_R15=compartment_c3*(global_par_konB5T*x(10)*x(7)-global_par_koffBT*x(18));

% Reaction: id = R16, name = R16: Rev. association of Tem1GTP with Bfa1
	reaction_R16=compartment_c2*(global_par_alpha*global_par_konBT*x(3)*x(6)-global_par_koffBT*x(19));

% Reaction: id = R17, name = R17: Rev. association of Tem1GTP with Kin4-phosphorylated Bfa1
	reaction_R17=compartment_c2*(global_par_alpha*global_par_konB4T*x(4)*x(6)-global_par_koffBT*x(20));

% Reaction: id = R18, name = R18: Rev. association of Tem1GTP with Cdc5-phosphorylated Bfa1
	reaction_R18=compartment_c2*(global_par_alpha*global_par_konB5T*x(5)*x(6)-global_par_koffBT*x(21));

% Reaction: id = R19, name = R19: Rev. association of Tem1GDP with Bfa1
	reaction_R19=compartment_c2*(global_par_alpha*global_par_konBT*x(3)*x(7)-global_par_koffBT*x(22));

% Reaction: id = R20, name = R20: Rev. association of Tem1GDP with Kin4-phosphorylated Bfa1
	reaction_R20=compartment_c2*(global_par_alpha*global_par_konB4T*x(4)*x(7)-global_par_koffBT*x(23));

% Reaction: id = R21, name = R21: Rev. association of Tem1GDP with Cdc5-phosphorylated Bfa1
	reaction_R21=compartment_c2*(global_par_alpha*global_par_konB5T*x(5)*x(7)-global_par_koffBT*x(24));

% Reaction: id = R22, name = R22: Rev. SPB-association of Tem1GTP
	reaction_R22=compartment_c3*(global_par_konT*x(2)*x(6)-global_par_koffT*x(11));

% Reaction: id = R23, name = R23: Rev. SPB-association of Tem1GDP
	reaction_R23=compartment_c3*(global_par_konT*x(2)*x(7)-global_par_koffT*x(12));

% Reaction: id = R24, name = R24: Phosphorylation of SPB-bound Bfa1 by Kin4
	reaction_R24=compartment_c3*global_par_u*global_par_kfKin4*x(8);

% Reaction: id = R25, name = R25: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Kin4
	reaction_R25=compartment_c3*global_par_u*global_par_kfKin4*x(13);

% Reaction: id = R26, name = R26: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Kin4
	reaction_R26=compartment_c3*global_par_u*global_par_kfKin4*x(16);

% Reaction: id = R27, name = R27: Phosphorylation of SPB-bound Bfa1 by Cdc5
	reaction_R27=compartment_c3*global_par_kfCdc5*x(8);

% Reaction: id = R28, name = R28: Phosphorylation of SPB-bound Bfa1:Tem1GTP by Cdc5
	reaction_R28=compartment_c3*global_par_kfCdc5*x(13);

% Reaction: id = R29, name = R29: Phosphorylation of SPB-bound Bfa1:Tem1GDP by Cdc5
	reaction_R29=compartment_c3*global_par_kfCdc5*x(16);

% Reaction: id = R47, name = R47: GAP-accelerated GTP-hydrolysis
	reaction_R47=compartment_c3*global_par_khydB4T*x(14);

% Reaction: id = R46, name = R46: GAP-accelerated GTP-hydrolysis
	reaction_R46=compartment_c3*global_par_khydBT*x(13);

% Reaction: id = R48, name = R48: GTP-hydrolysis with intrinisc GTPase activity
	reaction_R48=compartment_c3*global_par_khyd*x(15);

% Reaction: id = R30, name = R30: Phosphorylation of Bfa1 by cytosolic Kin4
	reaction_R30=compartment_c2*global_par_u*global_par_kfKin4Cyto*x(3);

% Reaction: id = R33, name = R33: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4
	reaction_R33=compartment_c2*global_par_krKin4*x(4);

% Reaction: id = R36, name = R36: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A
	reaction_R36=compartment_c2*global_par_u*global_par_krCdc5*x(5);

% Reaction: id = R40, name = R40: GDP- for GTP nucleotide exchange
	reaction_R40=compartment_c2*global_par_knex*x(7);

% Reaction: id = R39, name = R39: GTP-hydrolysis with intrinisc GTPase activity
	reaction_R39=compartment_c2*global_par_khyd*x(6);

% Reaction: id = R42, name = R42: GDP- for GTP nucleotide exchange
	reaction_R42=compartment_c3*global_par_knex*x(12);

% Reaction: id = R41, name = R41: GTP-hydrolysis with intrinisc GTPase activity
	reaction_R41=compartment_c3*global_par_khyd*x(11);

% Reaction: id = R44, name = R44: GAP-accelerated GTP-hydrolysis
	reaction_R44=compartment_c2*global_par_khydB4T*x(20);

% Reaction: id = R43, name = R43: GAP-accelerated GTP-hydrolysis
	reaction_R43=compartment_c2*global_par_khydBT*x(19);

% Reaction: id = R45, name = R45: GTP-hydrolysis with intrinisc GTPase activity
	reaction_R45=compartment_c2*global_par_khyd*x(21);

% Reaction: id = R34, name = R34: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4
	reaction_R34=compartment_c2*global_par_krKin4*x(20);

% Reaction: id = R37, name = R37: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A
	reaction_R37=compartment_c2*global_par_u*global_par_krCdc5*x(21);

% Reaction: id = R31, name = R31: Phosphorylation of Bfa1:Tem1GTP by cytosolic Kin4
	reaction_R31=compartment_c2*global_par_u*global_par_kfKin4Cyto*x(19);

% Reaction: id = R35, name = R35: Dephosphorylation of Bfa1 by a yet unidentified phosphatase counteracting Kin4
	reaction_R35=compartment_c2*global_par_krKin4*x(23);

% Reaction: id = R38, name = R38: Dephosphorylation of Cdc5-phosphorylated Bfa1 presumably by PP2A
	reaction_R38=compartment_c2*global_par_u*global_par_krCdc5*x(24);

% Reaction: id = R32, name = R32: Phosphorylation of Bfa1:Tem1GDP by cytosolic Kin4
	reaction_R32=compartment_c2*global_par_u*global_par_kfKin4Cyto*x(22);

%Event: id=spindle_alignment
	event_spindle_alignment=t >= 1800;

	if(event_spindle_alignment) 
		global_par_u=0;
	end

	xdot=zeros(24,1);
	
% Species:   id = SPB_B, name = B, affected by kineticLaw
	xdot(1) = (1/(compartment_c3))*((-1.0 * reaction_R1) + (-1.0 * reaction_R2) + (-1.0 * reaction_R3) + (-1.0 * reaction_R4) + (-1.0 * reaction_R5) + (-1.0 * reaction_R6) + (-1.0 * reaction_R7) + (-1.0 * reaction_R8) + (-1.0 * reaction_R9));
	
% Species:   id = SPB_T, name = T, affected by kineticLaw
	xdot(2) = (1/(compartment_c3))*((-1.0 * reaction_R22) + (-1.0 * reaction_R23));
	
% Species:   id = Bfa1, name = Bfa1, affected by kineticLaw
	xdot(3) = (1/(compartment_c2))*((-1.0 * reaction_R1) + (-1.0 * reaction_R16) + (-1.0 * reaction_R19) + (-1.0 * reaction_R30) + ( 1.0 * reaction_R33) + ( 1.0 * reaction_R36));
	
% Species:   id = Bfa1P4, name = Bfa1P4, affected by kineticLaw
	xdot(4) = (1/(compartment_c2))*((-1.0 * reaction_R2) + (-1.0 * reaction_R17) + (-1.0 * reaction_R20) + ( 1.0 * reaction_R30) + (-1.0 * reaction_R33));
	
% Species:   id = Bfa1P5, name = Bfa1P5, affected by kineticLaw
	xdot(5) = (1/(compartment_c2))*((-1.0 * reaction_R3) + (-1.0 * reaction_R18) + (-1.0 * reaction_R21) + (-1.0 * reaction_R36));
	
% Species:   id = Tem1GTP, name = Tem1GTP, affected by kineticLaw
	xdot(6) = (1/(compartment_c2))*((-1.0 * reaction_R10) + (-1.0 * reaction_R11) + (-1.0 * reaction_R12) + (-1.0 * reaction_R16) + (-1.0 * reaction_R17) + (-1.0 * reaction_R18) + (-1.0 * reaction_R22) + ( 1.0 * reaction_R40) + (-1.0 * reaction_R39));
	
% Species:   id = Tem1GDP, name = Tem1GDP, affected by kineticLaw
	xdot(7) = (1/(compartment_c2))*((-1.0 * reaction_R13) + (-1.0 * reaction_R14) + (-1.0 * reaction_R15) + (-1.0 * reaction_R19) + (-1.0 * reaction_R20) + (-1.0 * reaction_R21) + (-1.0 * reaction_R23) + (-1.0 * reaction_R40) + ( 1.0 * reaction_R39));
	
% Species:   id = B_Bfa1, name = B-Bfa1, affected by kineticLaw
	xdot(8) = (1/(compartment_c3))*(( 1.0 * reaction_R1) + (-1.0 * reaction_R10) + (-1.0 * reaction_R13) + (-1.0 * reaction_R24) + (-1.0 * reaction_R27));
	
% Species:   id = B_Bfa1P4, name = B-Bfa1P4, affected by kineticLaw
	xdot(9) = (1/(compartment_c3))*(( 1.0 * reaction_R2) + (-1.0 * reaction_R11) + (-1.0 * reaction_R14) + ( 1.0 * reaction_R24));
	
% Species:   id = B_Bfa1P5, name = B-Bfa1P5, affected by kineticLaw
	xdot(10) = (1/(compartment_c3))*(( 1.0 * reaction_R3) + (-1.0 * reaction_R12) + (-1.0 * reaction_R15) + ( 1.0 * reaction_R27));
	
% Species:   id = T_Tem1GTP, name = T-Tem1GTP, affected by kineticLaw
	xdot(11) = (1/(compartment_c3))*(( 1.0 * reaction_R22) + ( 1.0 * reaction_R42) + (-1.0 * reaction_R41));
	
% Species:   id = T_Tem1GDP, name = T-Tem1GDP, affected by kineticLaw
	xdot(12) = (1/(compartment_c3))*(( 1.0 * reaction_R23) + (-1.0 * reaction_R42) + ( 1.0 * reaction_R41));
	
% Species:   id = B_Bfa1_Tem1GTP, name = B-Bfa1-Tem1GTP, affected by kineticLaw
	xdot(13) = (1/(compartment_c3))*(( 1.0 * reaction_R4) + ( 1.0 * reaction_R10) + (-1.0 * reaction_R25) + (-1.0 * reaction_R28) + (-1.0 * reaction_R46));
	
% Species:   id = B_Bfa1P4_Tem1GTP, name = B-Bfa1P4-Tem1GTP, affected by kineticLaw
	xdot(14) = (1/(compartment_c3))*(( 1.0 * reaction_R5) + ( 1.0 * reaction_R11) + ( 1.0 * reaction_R25) + (-1.0 * reaction_R47));
	
% Species:   id = B_Bfa1P5_Tem1GTP, name = B-Bfa1P5-Tem1GTP, affected by kineticLaw
	xdot(15) = (1/(compartment_c3))*(( 1.0 * reaction_R6) + ( 1.0 * reaction_R12) + ( 1.0 * reaction_R28) + (-1.0 * reaction_R48));
	
% Species:   id = B_Bfa1_Tem1GDP, name = B-Bfa1-Tem1GDP, affected by kineticLaw
	xdot(16) = (1/(compartment_c3))*(( 1.0 * reaction_R7) + ( 1.0 * reaction_R13) + (-1.0 * reaction_R26) + (-1.0 * reaction_R29) + ( 1.0 * reaction_R46));
	
% Species:   id = B_Bfa1P4_Tem1GDP, name = B-Bfa1P4-Tem1GDP, affected by kineticLaw
	xdot(17) = (1/(compartment_c3))*(( 1.0 * reaction_R8) + ( 1.0 * reaction_R14) + ( 1.0 * reaction_R26) + ( 1.0 * reaction_R47));
	
% Species:   id = B_Bfa1P5_Tem1GDP, name = B-Bfa1P5-Tem1GDP, affected by kineticLaw
	xdot(18) = (1/(compartment_c3))*(( 1.0 * reaction_R9) + ( 1.0 * reaction_R15) + ( 1.0 * reaction_R29) + ( 1.0 * reaction_R48));
	
% Species:   id = Bfa1_Tem1GTP, name = Bfa1-Tem1GTP, affected by kineticLaw
	xdot(19) = (1/(compartment_c2))*((-1.0 * reaction_R4) + ( 1.0 * reaction_R16) + (-1.0 * reaction_R43) + ( 1.0 * reaction_R34) + ( 1.0 * reaction_R37) + (-1.0 * reaction_R31));
	
% Species:   id = Bfa1P4_Tem1GTP, name = Bfa1P4-Tem1GTP, affected by kineticLaw
	xdot(20) = (1/(compartment_c2))*((-1.0 * reaction_R5) + ( 1.0 * reaction_R17) + (-1.0 * reaction_R44) + (-1.0 * reaction_R34) + ( 1.0 * reaction_R31));
	
% Species:   id = Bfa1P5_Tem1GTP, name = Bfa1P5-Tem1GTP, affected by kineticLaw
	xdot(21) = (1/(compartment_c2))*((-1.0 * reaction_R6) + ( 1.0 * reaction_R18) + (-1.0 * reaction_R45) + (-1.0 * reaction_R37));
	
% Species:   id = Bfa1_Tem1GDP, name = Bfa1-Tem1GDP, affected by kineticLaw
	xdot(22) = (1/(compartment_c2))*((-1.0 * reaction_R7) + ( 1.0 * reaction_R19) + ( 1.0 * reaction_R43) + ( 1.0 * reaction_R35) + ( 1.0 * reaction_R38) + (-1.0 * reaction_R32));
	
% Species:   id = Bfa1P4_Tem1GDP, name = Bfa1P4-Tem1GDP, affected by kineticLaw
	xdot(23) = (1/(compartment_c2))*((-1.0 * reaction_R8) + ( 1.0 * reaction_R20) + ( 1.0 * reaction_R44) + (-1.0 * reaction_R35) + ( 1.0 * reaction_R32));
	
% Species:   id = Bfa1P5_Tem1GDP, name = Bfa1P5-Tem1GDP, affected by kineticLaw
	xdot(24) = (1/(compartment_c2))*((-1.0 * reaction_R9) + ( 1.0 * reaction_R21) + ( 1.0 * reaction_R45) + (-1.0 * reaction_R38));
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


