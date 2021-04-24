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
% Model name = Rao2014 - Fatty acid beta-oxidation (reduced model)
%
% is http://identifiers.org/biomodels.db/MODEL1403250000
%


function main()
%Initial conditions vector
	x0=zeros(33,1);
	x0(1) = 0.171;
	x0(2) = 0.023;
	x0(3) = 0.11;
	x0(4) = 0.019;
	x0(5) = 0.052;
	x0(6) = 0.017;
	x0(7) = 0.008;
	x0(8) = 26.8;
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
	x0(25) = 0.0;
	x0(26) = 0.0;
	x0(27) = 0.0;
	x0(28) = 0.0;
	x0(29) = 0.0;
	x0(30) = 0.0;
	x0(31) = 0.0;
	x0(32) = 30.0;
	x0(33) = 4970.0;


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

% Compartment: id = VCYT, name = VCYT, constant
	compartment_VCYT=0.01;
% Compartment: id = VMAT, name = VMAT, constant
	compartment_VMAT=1.8E-6;
% Parameter:   id =  Vfcact, name = Vfcact
	global_par_Vfcact=0.42;
% Parameter:   id =  Vrcact, name = Vrcact
	global_par_Vrcact=0.42;
% Parameter:   id =  KmcactCarMAT, name = KmcactCarMAT
	global_par_KmcactCarMAT=130.0;
% Parameter:   id =  KmcactCarCYT, name = KmcactCarCYT
	global_par_KmcactCarCYT=130.0;
% Parameter:   id =  KicactCarCYT, name = KicactCarCYT
	global_par_KicactCarCYT=200.0;
% Parameter:   id =  Keqcact, name = Keqcact
	global_par_Keqcact=1.0;
% Parameter:   id =  Vcpt2, name = Vcpt2
	global_par_Vcpt2=0.391;
% Parameter:   id =  Kmcpt2C16AcylCarMAT, name = Kmcpt2C16AcylCarMAT
	global_par_Kmcpt2C16AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C14AcylCarMAT, name = Kmcpt2C14AcylCarMAT
	global_par_Kmcpt2C14AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C12AcylCarMAT, name = Kmcpt2C12AcylCarMAT
	global_par_Kmcpt2C12AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C10AcylCarMAT, name = Kmcpt2C10AcylCarMAT
	global_par_Kmcpt2C10AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C8AcylCarMAT, name = Kmcpt2C8AcylCarMAT
	global_par_Kmcpt2C8AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C6AcylCarMAT, name = Kmcpt2C6AcylCarMAT
	global_par_Kmcpt2C6AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2C4AcylCarMAT, name = Kmcpt2C4AcylCarMAT
	global_par_Kmcpt2C4AcylCarMAT=51.0;
% Parameter:   id =  Kmcpt2CoAMAT, name = Kmcpt2CoAMAT
	global_par_Kmcpt2CoAMAT=30.0;
% Parameter:   id =  Kmcpt2C16AcylCoAMAT, name = Kmcpt2C16AcylCoAMAT
	global_par_Kmcpt2C16AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C14AcylCoAMAT, name = Kmcpt2C14AcylCoAMAT
	global_par_Kmcpt2C14AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C12AcylCoAMAT, name = Kmcpt2C12AcylCoAMAT
	global_par_Kmcpt2C12AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C10AcylCoAMAT, name = Kmcpt2C10AcylCoAMAT
	global_par_Kmcpt2C10AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C8AcylCoAMAT, name = Kmcpt2C8AcylCoAMAT
	global_par_Kmcpt2C8AcylCoAMAT=38.0;
% Parameter:   id =  Kmcpt2C6AcylCoAMAT, name = Kmcpt2C6AcylCoAMAT
	global_par_Kmcpt2C6AcylCoAMAT=1000.0;
% Parameter:   id =  Kmcpt2C4AcylCoAMAT, name = Kmcpt2C4AcylCoAMAT
	global_par_Kmcpt2C4AcylCoAMAT=1000000.0;
% Parameter:   id =  Kmcpt2CarMAT, name = Kmcpt2CarMAT
	global_par_Kmcpt2CarMAT=350.0;
% Parameter:   id =  Keqcpt2, name = Keqcpt2
	global_par_Keqcpt2=2.22;
% Parameter:   id =  Vvlcad, name = Vvlcad
	global_par_Vvlcad=0.008;
% Parameter:   id =  KmvlcadC16AcylCoAMAT, name = KmvlcadC16AcylCoAMAT
	global_par_KmvlcadC16AcylCoAMAT=6.5;
% Parameter:   id =  KmvlcadC14AcylCoAMAT, name = KmvlcadC14AcylCoAMAT
	global_par_KmvlcadC14AcylCoAMAT=4.0;
% Parameter:   id =  KmvlcadC12AcylCoAMAT, name = KmvlcadC12AcylCoAMAT
	global_par_KmvlcadC12AcylCoAMAT=2.7;
% Parameter:   id =  KmvlcadFAD, name = KmvlcadFAD
	global_par_KmvlcadFAD=0.12;
% Parameter:   id =  KmvlcadC16EnoylCoAMAT, name = KmvlcadC16EnoylCoAMAT
	global_par_KmvlcadC16EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadC14EnoylCoAMAT, name = KmvlcadC14EnoylCoAMAT
	global_par_KmvlcadC14EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadC12EnoylCoAMAT, name = KmvlcadC12EnoylCoAMAT
	global_par_KmvlcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmvlcadFADH, name = KmvlcadFADH
	global_par_KmvlcadFADH=24.2;
% Parameter:   id =  Keqvlcad, name = Keqvlcad
	global_par_Keqvlcad=6.0;
% Parameter:   id =  Vlcad, name = Vlcad
	global_par_Vlcad=0.01;
% Parameter:   id =  KmlcadC16AcylCoAMAT, name = KmlcadC16AcylCoAMAT
	global_par_KmlcadC16AcylCoAMAT=2.5;
% Parameter:   id =  KmlcadC14AcylCoAMAT, name = KmlcadC14AcylCoAMAT
	global_par_KmlcadC14AcylCoAMAT=7.4;
% Parameter:   id =  KmlcadC12AcylCoAMAT, name = KmlcadC12AcylCoAMAT
	global_par_KmlcadC12AcylCoAMAT=9.0;
% Parameter:   id =  KmlcadC10AcylCoAMAT, name = KmlcadC10AcylCoAMAT
	global_par_KmlcadC10AcylCoAMAT=24.3;
% Parameter:   id =  KmlcadC8AcylCoAMAT, name = KmlcadC8AcylCoAMAT
	global_par_KmlcadC8AcylCoAMAT=123.0;
% Parameter:   id =  KmlcadFAD, name = KmlcadFAD
	global_par_KmlcadFAD=0.12;
% Parameter:   id =  KmlcadC16EnoylCoAMAT, name = KmlcadC16EnoylCoAMAT
	global_par_KmlcadC16EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC14EnoylCoAMAT, name = KmlcadC14EnoylCoAMAT
	global_par_KmlcadC14EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC12EnoylCoAMAT, name = KmlcadC12EnoylCoAMAT
	global_par_KmlcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC10EnoylCoAMAT, name = KmlcadC10EnoylCoAMAT
	global_par_KmlcadC10EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadC8EnoylCoAMAT, name = KmlcadC8EnoylCoAMAT
	global_par_KmlcadC8EnoylCoAMAT=1.08;
% Parameter:   id =  KmlcadFADH, name = KmlcadFADH
	global_par_KmlcadFADH=24.2;
% Parameter:   id =  Keqlcad, name = Keqlcad
	global_par_Keqlcad=6.0;
% Parameter:   id =  Vmcad, name = Vmcad
	global_par_Vmcad=0.081;
% Parameter:   id =  KmmcadC12AcylCoAMAT, name = KmmcadC12AcylCoAMAT
	global_par_KmmcadC12AcylCoAMAT=5.7;
% Parameter:   id =  KmmcadC10AcylCoAMAT, name = KmmcadC10AcylCoAMAT
	global_par_KmmcadC10AcylCoAMAT=5.4;
% Parameter:   id =  KmmcadC8AcylCoAMAT, name = KmmcadC8AcylCoAMAT
	global_par_KmmcadC8AcylCoAMAT=4.0;
% Parameter:   id =  KmmcadC6AcylCoAMAT, name = KmmcadC6AcylCoAMAT
	global_par_KmmcadC6AcylCoAMAT=9.4;
% Parameter:   id =  KmmcadC4AcylCoAMAT, name = KmmcadC4AcylCoAMAT
	global_par_KmmcadC4AcylCoAMAT=135.0;
% Parameter:   id =  KmmcadFAD, name = KmmcadFAD
	global_par_KmmcadFAD=0.12;
% Parameter:   id =  KmmcadC12EnoylCoAMAT, name = KmmcadC12EnoylCoAMAT
	global_par_KmmcadC12EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC10EnoylCoAMAT, name = KmmcadC10EnoylCoAMAT
	global_par_KmmcadC10EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC8EnoylCoAMAT, name = KmmcadC8EnoylCoAMAT
	global_par_KmmcadC8EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC6EnoylCoAMAT, name = KmmcadC6EnoylCoAMAT
	global_par_KmmcadC6EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadC4EnoylCoAMAT, name = KmmcadC4EnoylCoAMAT
	global_par_KmmcadC4EnoylCoAMAT=1.08;
% Parameter:   id =  KmmcadFADH, name = KmmcadFADH
	global_par_KmmcadFADH=24.2;
% Parameter:   id =  Keqmcad, name = Keqmcad
	global_par_Keqmcad=6.0;
% Parameter:   id =  Vscad, name = Vscad
	global_par_Vscad=0.081;
% Parameter:   id =  KmscadC6AcylCoAMAT, name = KmscadC6AcylCoAMAT
	global_par_KmscadC6AcylCoAMAT=285.0;
% Parameter:   id =  KmscadC4AcylCoAMAT, name = KmscadC4AcylCoAMAT
	global_par_KmscadC4AcylCoAMAT=10.7;
% Parameter:   id =  KmscadFAD, name = KmscadFAD
	global_par_KmscadFAD=0.12;
% Parameter:   id =  KmscadC6EnoylCoAMAT, name = KmscadC6EnoylCoAMAT
	global_par_KmscadC6EnoylCoAMAT=1.08;
% Parameter:   id =  KmscadC4EnoylCoAMAT, name = KmscadC4EnoylCoAMAT
	global_par_KmscadC4EnoylCoAMAT=1.08;
% Parameter:   id =  KmscadFADH, name = KmscadFADH
	global_par_KmscadFADH=24.2;
% Parameter:   id =  Keqscad, name = Keqscad
	global_par_Keqscad=6.0;
% Parameter:   id =  Vcrot, name = Vcrot
	global_par_Vcrot=3.6;
% Parameter:   id =  KmcrotC16EnoylCoAMAT, name = KmcrotC16EnoylCoAMAT
	global_par_KmcrotC16EnoylCoAMAT=150.0;
% Parameter:   id =  KmcrotC14EnoylCoAMAT, name = KmcrotC14EnoylCoAMAT
	global_par_KmcrotC14EnoylCoAMAT=100.0;
% Parameter:   id =  KmcrotC12EnoylCoAMAT, name = KmcrotC12EnoylCoAMAT
	global_par_KmcrotC12EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC10EnoylCoAMAT, name = KmcrotC10EnoylCoAMAT
	global_par_KmcrotC10EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC8EnoylCoAMAT, name = KmcrotC8EnoylCoAMAT
	global_par_KmcrotC8EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC6EnoylCoAMAT, name = KmcrotC6EnoylCoAMAT
	global_par_KmcrotC6EnoylCoAMAT=25.0;
% Parameter:   id =  KmcrotC4EnoylCoAMAT, name = KmcrotC4EnoylCoAMAT
	global_par_KmcrotC4EnoylCoAMAT=40.0;
% Parameter:   id =  KmcrotC16HydroxyacylCoAMAT, name = KmcrotC16HydroxyacylCoAMAT
	global_par_KmcrotC16HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC14HydroxyacylCoAMAT, name = KmcrotC14HydroxyacylCoAMAT
	global_par_KmcrotC14HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC12HydroxyacylCoAMAT, name = KmcrotC12HydroxyacylCoAMAT
	global_par_KmcrotC12HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC10HydroxyacylCoAMAT, name = KmcrotC10HydroxyacylCoAMAT
	global_par_KmcrotC10HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC8HydroxyacylCoAMAT, name = KmcrotC8HydroxyacylCoAMAT
	global_par_KmcrotC8HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC6HydroxyacylCoAMAT, name = KmcrotC6HydroxyacylCoAMAT
	global_par_KmcrotC6HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KmcrotC4HydroxyacylCoAMAT, name = KmcrotC4HydroxyacylCoAMAT
	global_par_KmcrotC4HydroxyacylCoAMAT=45.0;
% Parameter:   id =  KicrotC4AcetoacylCoA, name = KicrotC4AcetoacylCoA
	global_par_KicrotC4AcetoacylCoA=1.6;
% Parameter:   id =  Keqcrot, name = Keqcrot
	global_par_Keqcrot=3.13;
% Parameter:   id =  Vmschad, name = Vmschad
	global_par_Vmschad=1.0;
% Parameter:   id =  KmmschadC16HydroxyacylCoAMAT, name = KmmschadC16HydroxyacylCoAMAT
	global_par_KmmschadC16HydroxyacylCoAMAT=1.5;
% Parameter:   id =  KmmschadC14HydroxyacylCoAMAT, name = KmmschadC14HydroxyacylCoAMAT
	global_par_KmmschadC14HydroxyacylCoAMAT=1.8;
% Parameter:   id =  KmmschadC12HydroxyacylCoAMAT, name = KmmschadC12HydroxyacylCoAMAT
	global_par_KmmschadC12HydroxyacylCoAMAT=3.7;
% Parameter:   id =  KmmschadC10HydroxyacylCoAMAT, name = KmmschadC10HydroxyacylCoAMAT
	global_par_KmmschadC10HydroxyacylCoAMAT=8.8;
% Parameter:   id =  KmmschadC8HydroxyacylCoAMAT, name = KmmschadC8HydroxyacylCoAMAT
	global_par_KmmschadC8HydroxyacylCoAMAT=16.3;
% Parameter:   id =  KmmschadC6HydroxyacylCoAMAT, name = KmmschadC6HydroxyacylCoAMAT
	global_par_KmmschadC6HydroxyacylCoAMAT=28.6;
% Parameter:   id =  KmmschadC4HydroxyacylCoAMAT, name = KmmschadC4HydroxyacylCoAMAT
	global_par_KmmschadC4HydroxyacylCoAMAT=69.9;
% Parameter:   id =  KmmschadNADMAT, name = KmmschadNADMAT
	global_par_KmmschadNADMAT=58.5;
% Parameter:   id =  KmmschadC16KetoacylCoAMAT, name = KmmschadC16KetoacylCoAMAT
	global_par_KmmschadC16KetoacylCoAMAT=1.4;
% Parameter:   id =  KmmschadC14KetoacylCoAMAT, name = KmmschadC14KetoacylCoAMAT
	global_par_KmmschadC14KetoacylCoAMAT=1.4;
% Parameter:   id =  KmmschadC12KetoacylCoAMAT, name = KmmschadC12KetoacylCoAMAT
	global_par_KmmschadC12KetoacylCoAMAT=1.6;
% Parameter:   id =  KmmschadC10KetoacylCoAMAT, name = KmmschadC10KetoacylCoAMAT
	global_par_KmmschadC10KetoacylCoAMAT=2.3;
% Parameter:   id =  KmmschadC8KetoacylCoAMAT, name = KmmschadC8KetoacylCoAMAT
	global_par_KmmschadC8KetoacylCoAMAT=4.1;
% Parameter:   id =  KmmschadC6KetoacylCoAMAT, name = KmmschadC6KetoacylCoAMAT
	global_par_KmmschadC6KetoacylCoAMAT=5.8;
% Parameter:   id =  KmmschadC4AcetoacylCoAMAT, name = KmmschadC4AcetoacylCoAMAT
	global_par_KmmschadC4AcetoacylCoAMAT=16.9;
% Parameter:   id =  KmmschadNADHMAT, name = KmmschadNADHMAT
	global_par_KmmschadNADHMAT=5.4;
% Parameter:   id =  Keqmschad, name = Keqmschad
	global_par_Keqmschad=2.17E-4;
% Parameter:   id =  Vmckat, name = Vmckat
	global_par_Vmckat=0.377;
% Parameter:   id =  KmmckatC16KetoacylCoAMAT, name = KmmckatC16KetoacylCoAMAT
	global_par_KmmckatC16KetoacylCoAMAT=1.1;
% Parameter:   id =  KmmckatC14KetoacylCoAMAT, name = KmmckatC14KetoacylCoAMAT
	global_par_KmmckatC14KetoacylCoAMAT=1.2;
% Parameter:   id =  KmmckatC12KetoacylCoAMAT, name = KmmckatC12KetoacylCoAMAT
	global_par_KmmckatC12KetoacylCoAMAT=1.3;
% Parameter:   id =  KmmckatC10KetoacylCoAMAT, name = KmmckatC10KetoacylCoAMAT
	global_par_KmmckatC10KetoacylCoAMAT=2.1;
% Parameter:   id =  KmmckatC8KetoacylCoAMAT, name = KmmckatC8KetoacylCoAMAT
	global_par_KmmckatC8KetoacylCoAMAT=3.2;
% Parameter:   id =  KmmckatC6KetoacylCoAMAT, name = KmmckatC6KetoacylCoAMAT
	global_par_KmmckatC6KetoacylCoAMAT=6.7;
% Parameter:   id =  KmmckatC4AcetoacylCoAMAT, name = KmmckatC4AcetoacylCoAMAT
	global_par_KmmckatC4AcetoacylCoAMAT=12.4;
% Parameter:   id =  KmmckatCoAMAT, name = KmmckatCoAMAT
	global_par_KmmckatCoAMAT=26.6;
% Parameter:   id =  KmmckatC14AcylCoAMAT, name = KmmckatC14AcylCoAMAT
	global_par_KmmckatC14AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC16AcylCoAMAT, name = KmmckatC16AcylCoAMAT
	global_par_KmmckatC16AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC12AcylCoAMAT, name = KmmckatC12AcylCoAMAT
	global_par_KmmckatC12AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC10AcylCoAMAT, name = KmmckatC10AcylCoAMAT
	global_par_KmmckatC10AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC8AcylCoAMAT, name = KmmckatC8AcylCoAMAT
	global_par_KmmckatC8AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC6AcylCoAMAT, name = KmmckatC6AcylCoAMAT
	global_par_KmmckatC6AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatC4AcylCoAMAT, name = KmmckatC4AcylCoAMAT
	global_par_KmmckatC4AcylCoAMAT=13.83;
% Parameter:   id =  KmmckatAcetylCoAMAT, name = KmmckatAcetylCoAMAT
	global_par_KmmckatAcetylCoAMAT=30.0;
% Parameter:   id =  Keqmckat, name = Keqmckat
	global_par_Keqmckat=1051.0;
% Parameter:   id =  Vmtp, name = Vmtp
	global_par_Vmtp=2.84;
% Parameter:   id =  KmmtpC16EnoylCoAMAT, name = KmmtpC16EnoylCoAMAT
	global_par_KmmtpC16EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC14EnoylCoAMAT, name = KmmtpC14EnoylCoAMAT
	global_par_KmmtpC14EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC12EnoylCoAMAT, name = KmmtpC12EnoylCoAMAT
	global_par_KmmtpC12EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC10EnoylCoAMAT, name = KmmtpC10EnoylCoAMAT
	global_par_KmmtpC10EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpC8EnoylCoAMAT, name = KmmtpC8EnoylCoAMAT
	global_par_KmmtpC8EnoylCoAMAT=25.0;
% Parameter:   id =  KmmtpNADMAT, name = KmmtpNADMAT
	global_par_KmmtpNADMAT=60.0;
% Parameter:   id =  KmmtpCoAMAT, name = KmmtpCoAMAT
	global_par_KmmtpCoAMAT=30.0;
% Parameter:   id =  KmmtpC14AcylCoAMAT, name = KmmtpC14AcylCoAMAT
	global_par_KmmtpC14AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC16AcylCoAMAT, name = KmmtpC16AcylCoAMAT
	global_par_KmmtpC16AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC12AcylCoAMAT, name = KmmtpC12AcylCoAMAT
	global_par_KmmtpC12AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC10AcylCoAMAT, name = KmmtpC10AcylCoAMAT
	global_par_KmmtpC10AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC8AcylCoAMAT, name = KmmtpC8AcylCoAMAT
	global_par_KmmtpC8AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpC6AcylCoAMAT, name = KmmtpC6AcylCoAMAT
	global_par_KmmtpC6AcylCoAMAT=13.83;
% Parameter:   id =  KmmtpNADHMAT, name = KmmtpNADHMAT
	global_par_KmmtpNADHMAT=50.0;
% Parameter:   id =  KmmtpAcetylCoAMAT, name = KmmtpAcetylCoAMAT
	global_par_KmmtpAcetylCoAMAT=30.0;
% Parameter:   id =  Keqmtp, name = Keqmtp
	global_par_Keqmtp=0.71;
% assignmentRule: variable = C16AcylCoACYT
	x(8)=26.8*2.71828^((-0.18)*time);
% assignmentRule: variable = CoAMAT
	x(33)=const_species_CoAMATt-(x(10)+x(11)+const_species_C16HydroxyacylCoAMAT+const_species_C16KetoacylCoAMAT+x(13)+x(14)+const_species_C14HydroxyacylCoAMAT+const_species_C14KetoacylCoAMAT+x(16)+x(17)+const_species_C12HydroxyacylCoAMAT+const_species_C12KetoacylCoAMAT+x(19)+x(20)+const_species_C10HydroxyacylCoAMAT+const_species_C10KetoacylCoAMAT+x(22)+x(23)+const_species_C8HydroxyacylCoAMAT+const_species_C8KetoacylCoAMAT+x(25)+x(26)+const_species_C6HydroxyacylCoAMAT+x(27)+x(29)+x(30)+const_species_C4HydroxyacylCoAMAT+x(31)+x(32));

% Reaction: id = vcpt1C16, name = vcpt1C16	% Local Parameter:   id =  Keqcpt1, name = Keqcpt1
	reaction_vcpt1C16_Keqcpt1=0.45;
	% Local Parameter:   id =  Kicpt1MalCoACYT, name = Kicpt1MalCoACYT
	reaction_vcpt1C16_Kicpt1MalCoACYT=9.1;
	% Local Parameter:   id =  Kmcpt1C16AcylCarCYT, name = Kmcpt1C16AcylCarCYT
	reaction_vcpt1C16_Kmcpt1C16AcylCarCYT=136.0;
	% Local Parameter:   id =  Kmcpt1C16AcylCoACYT, name = Kmcpt1C16AcylCoACYT
	reaction_vcpt1C16_Kmcpt1C16AcylCoACYT=13.8;
	% Local Parameter:   id =  Kmcpt1CarCYT, name = Kmcpt1CarCYT
	reaction_vcpt1C16_Kmcpt1CarCYT=125.0;
	% Local Parameter:   id =  Kmcpt1CoACYT, name = Kmcpt1CoACYT
	reaction_vcpt1C16_Kmcpt1CoACYT=40.7;
	% Local Parameter:   id =  Vcpt1, name = Vcpt1
	reaction_vcpt1C16_Vcpt1=0.012;
	% Local Parameter:   id =  ncpt1, name = ncpt1
	reaction_vcpt1C16_ncpt1=2.4799;
	% Local Parameter:   id =  sfcpt1C16, name = sfcpt1C16
	reaction_vcpt1C16_sfcpt1C16=1.0;

	reaction_vcpt1C16=compartment_VCYT*function_4_vcpt1C16_1(x(1), x(8), const_species_CarCYT, const_species_CoACYT, reaction_vcpt1C16_Keqcpt1, reaction_vcpt1C16_Kicpt1MalCoACYT, reaction_vcpt1C16_Kmcpt1C16AcylCarCYT, reaction_vcpt1C16_Kmcpt1C16AcylCoACYT, reaction_vcpt1C16_Kmcpt1CarCYT, reaction_vcpt1C16_Kmcpt1CoACYT, const_species_MalCoACYT, compartment_VCYT, reaction_vcpt1C16_Vcpt1, reaction_vcpt1C16_ncpt1, reaction_vcpt1C16_sfcpt1C16);

% Reaction: id = vcactC16, name = vcactC16	% Local Parameter:   id =  KicactC16AcylCarCYT, name = KicactC16AcylCarCYT
	reaction_vcactC16_KicactC16AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC16AcylCarCYT, name = KmcactC16AcylCarCYT
	reaction_vcactC16_KmcactC16AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC16AcylCarMAT, name = KmcactC16AcylCarMAT
	reaction_vcactC16_KmcactC16AcylCarMAT=15.0;

	reaction_vcactC16=function_4_vcactC16_1(x(1), x(9), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC16_KicactC16AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC16_KmcactC16AcylCarCYT, reaction_vcactC16_KmcactC16AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC14, name = vcactC14	% Local Parameter:   id =  KicactC14AcylCarCYT, name = KicactC14AcylCarCYT
	reaction_vcactC14_KicactC14AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC14AcylCarCYT, name = KmcactC14AcylCarCYT
	reaction_vcactC14_KmcactC14AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC14AcylCarMAT, name = KmcactC14AcylCarMAT
	reaction_vcactC14_KmcactC14AcylCarMAT=15.0;

	reaction_vcactC14=function_4_vcactC14_1(x(2), x(12), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC14_KicactC14AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC14_KmcactC14AcylCarCYT, reaction_vcactC14_KmcactC14AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC12, name = vcactC12	% Local Parameter:   id =  KicactC12AcylCarCYT, name = KicactC12AcylCarCYT
	reaction_vcactC12_KicactC12AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC12AcylCarCYT, name = KmcactC12AcylCarCYT
	reaction_vcactC12_KmcactC12AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC12AcylCarMAT, name = KmcactC12AcylCarMAT
	reaction_vcactC12_KmcactC12AcylCarMAT=15.0;

	reaction_vcactC12=function_4_vcactC12_1(x(3), x(15), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC12_KicactC12AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC12_KmcactC12AcylCarCYT, reaction_vcactC12_KmcactC12AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC10, name = vcactC10	% Local Parameter:   id =  KicactC10AcylCarCYT, name = KicactC10AcylCarCYT
	reaction_vcactC10_KicactC10AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC10AcylCarCYT, name = KmcactC10AcylCarCYT
	reaction_vcactC10_KmcactC10AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC10AcylCarMAT, name = KmcactC10AcylCarMAT
	reaction_vcactC10_KmcactC10AcylCarMAT=15.0;

	reaction_vcactC10=function_4_vcactC10_1(x(4), x(18), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC10_KicactC10AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC10_KmcactC10AcylCarCYT, reaction_vcactC10_KmcactC10AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC8, name = vcactC8	% Local Parameter:   id =  KicactC8AcylCarCYT, name = KicactC8AcylCarCYT
	reaction_vcactC8_KicactC8AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC8AcylCarCYT, name = KmcactC8AcylCarCYT
	reaction_vcactC8_KmcactC8AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC8AcylCarMAT, name = KmcactC8AcylCarMAT
	reaction_vcactC8_KmcactC8AcylCarMAT=15.0;

	reaction_vcactC8=function_4_vcactC8_1(x(5), x(21), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC8_KicactC8AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC8_KmcactC8AcylCarCYT, reaction_vcactC8_KmcactC8AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC6, name = vcactC6	% Local Parameter:   id =  KicactC6AcylCarCYT, name = KicactC6AcylCarCYT
	reaction_vcactC6_KicactC6AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC6AcylCarCYT, name = KmcactC6AcylCarCYT
	reaction_vcactC6_KmcactC6AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC6AcylCarMAT, name = KmcactC6AcylCarMAT
	reaction_vcactC6_KmcactC6AcylCarMAT=15.0;

	reaction_vcactC6=function_4_vcactC6_1(x(6), x(24), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC6_KicactC6AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC6_KmcactC6AcylCarCYT, reaction_vcactC6_KmcactC6AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcactC4, name = vcactC4	% Local Parameter:   id =  KicactC4AcylCarCYT, name = KicactC4AcylCarCYT
	reaction_vcactC4_KicactC4AcylCarCYT=56.0;
	% Local Parameter:   id =  KmcactC4AcylCarCYT, name = KmcactC4AcylCarCYT
	reaction_vcactC4_KmcactC4AcylCarCYT=15.0;
	% Local Parameter:   id =  KmcactC4AcylCarMAT, name = KmcactC4AcylCarMAT
	reaction_vcactC4_KmcactC4AcylCarMAT=15.0;

	reaction_vcactC4=function_4_vcactC4_1(x(7), x(28), const_species_CarCYT, const_species_CarMAT, global_par_Keqcact, reaction_vcactC4_KicactC4AcylCarCYT, global_par_KicactCarCYT, reaction_vcactC4_KmcactC4AcylCarCYT, reaction_vcactC4_KmcactC4AcylCarMAT, global_par_KmcactCarCYT, global_par_KmcactCarMAT, global_par_Vfcact, global_par_Vrcact);

% Reaction: id = vcpt2C16, name = vcpt2C16	% Local Parameter:   id =  sfcpt2C16, name = sfcpt2C16
	reaction_vcpt2C16_sfcpt2C16=0.85;

	reaction_vcpt2C16=compartment_VMAT*function_4_vcpt2C16_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C16_sfcpt2C16);

% Reaction: id = vcpt2C14, name = vcpt2C14	% Local Parameter:   id =  sfcpt2C14, name = sfcpt2C14
	reaction_vcpt2C14_sfcpt2C14=1.0;

	reaction_vcpt2C14=compartment_VMAT*function_4_vcpt2C14_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C14_sfcpt2C14);

% Reaction: id = vcpt2C12, name = vcpt2C12	% Local Parameter:   id =  sfcpt2C12, name = sfcpt2C12
	reaction_vcpt2C12_sfcpt2C12=0.95;

	reaction_vcpt2C12=compartment_VMAT*function_4_vcpt2C12_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C12_sfcpt2C12);

% Reaction: id = vcpt2C10, name = vcpt2C10	% Local Parameter:   id =  sfcpt2C10, name = sfcpt2C10
	reaction_vcpt2C10_sfcpt2C10=0.95;

	reaction_vcpt2C10=compartment_VMAT*function_4_vcpt2C10_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C10_sfcpt2C10);

% Reaction: id = vcpt2C8, name = vcpt2C8	% Local Parameter:   id =  sfcpt2C8, name = sfcpt2C8
	reaction_vcpt2C8_sfcpt2C8=0.35;

	reaction_vcpt2C8=compartment_VMAT*function_4_vcpt2C8_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C8_sfcpt2C8);

% Reaction: id = vcpt2C6, name = vcpt2C6	% Local Parameter:   id =  sfcpt2C6, name = sfcpt2C6
	reaction_vcpt2C6_sfcpt2C6=0.15;

	reaction_vcpt2C6=compartment_VMAT*function_4_vcpt2C6_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C6_sfcpt2C6);

% Reaction: id = vcpt2C4, name = vcpt2C4	% Local Parameter:   id =  sfcpt2C4, name = sfcpt2C4
	reaction_vcpt2C4_sfcpt2C4=0.01;

	reaction_vcpt2C4=compartment_VMAT*function_4_vcpt2C4_1(x(18), x(19), x(15), x(16), x(12), x(13), x(9), x(10), x(28), x(29), x(24), x(25), x(21), x(22), const_species_CarMAT, x(33), global_par_Keqcpt2, global_par_Kmcpt2C10AcylCarMAT, global_par_Kmcpt2C10AcylCoAMAT, global_par_Kmcpt2C12AcylCarMAT, global_par_Kmcpt2C12AcylCoAMAT, global_par_Kmcpt2C14AcylCarMAT, global_par_Kmcpt2C14AcylCoAMAT, global_par_Kmcpt2C16AcylCarMAT, global_par_Kmcpt2C16AcylCoAMAT, global_par_Kmcpt2C4AcylCarMAT, global_par_Kmcpt2C4AcylCoAMAT, global_par_Kmcpt2C6AcylCarMAT, global_par_Kmcpt2C6AcylCoAMAT, global_par_Kmcpt2C8AcylCarMAT, global_par_Kmcpt2C8AcylCoAMAT, global_par_Kmcpt2CarMAT, global_par_Kmcpt2CoAMAT, compartment_VMAT, global_par_Vcpt2, reaction_vcpt2C4_sfcpt2C4);

% Reaction: id = vvlcadC16, name = vvlcadC16	% Local Parameter:   id =  sfvlcadC16, name = sfvlcadC16
	reaction_vvlcadC16_sfvlcadC16=1.0;

	reaction_vvlcadC16=compartment_VMAT*function_4_vvlcadC16_1(x(16), x(17), x(13), x(14), x(10), x(11), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqvlcad, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadFADH, compartment_VMAT, global_par_Vvlcad, reaction_vvlcadC16_sfvlcadC16);

% Reaction: id = vvlcadC14, name = vvlcadC14	% Local Parameter:   id =  sfvlcadC14, name = sfvlcadC14
	reaction_vvlcadC14_sfvlcadC14=0.42;

	reaction_vvlcadC14=compartment_VMAT*function_4_vvlcadC14_1(x(16), x(17), x(13), x(14), x(10), x(11), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqvlcad, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadFADH, compartment_VMAT, global_par_Vvlcad, reaction_vvlcadC14_sfvlcadC14);

% Reaction: id = vvlcadC12, name = vvlcadC12	% Local Parameter:   id =  sfvlcadC12, name = sfvlcadC12
	reaction_vvlcadC12_sfvlcadC12=0.11;

	reaction_vvlcadC12=compartment_VMAT*function_4_vvlcadC12_1(x(16), x(17), x(13), x(14), x(10), x(11), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqvlcad, global_par_KmvlcadC12AcylCoAMAT, global_par_KmvlcadC12EnoylCoAMAT, global_par_KmvlcadC14AcylCoAMAT, global_par_KmvlcadC14EnoylCoAMAT, global_par_KmvlcadC16AcylCoAMAT, global_par_KmvlcadC16EnoylCoAMAT, global_par_KmvlcadFAD, global_par_KmvlcadFADH, compartment_VMAT, global_par_Vvlcad, reaction_vvlcadC12_sfvlcadC12);

% Reaction: id = vlcadC16, name = vlcadC16	% Local Parameter:   id =  sflcadC16, name = sflcadC16
	reaction_vlcadC16_sflcadC16=0.9;

	reaction_vlcadC16=compartment_VMAT*function_4_vlcadC16_1(x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqlcad, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadFADH, compartment_VMAT, global_par_Vlcad, reaction_vlcadC16_sflcadC16);

% Reaction: id = vlcadC14, name = vlcadC14	% Local Parameter:   id =  sflcadC14, name = sflcadC14
	reaction_vlcadC14_sflcadC14=1.0;

	reaction_vlcadC14=compartment_VMAT*function_4_vlcadC14_1(x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqlcad, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadFADH, compartment_VMAT, global_par_Vlcad, reaction_vlcadC14_sflcadC14);

% Reaction: id = vlcadC12, name = vlcadC12	% Local Parameter:   id =  sflcadC12, name = sflcadC12
	reaction_vlcadC12_sflcadC12=0.9;

	reaction_vlcadC12=compartment_VMAT*function_4_vlcadC12_1(x(19), x(20), x(16), x(13), x(14), x(10), x(11), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqlcad, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadFADH, compartment_VMAT, global_par_Vlcad, reaction_vlcadC12_sflcadC12);

% Reaction: id = vlcadC10, name = vlcadC10	% Local Parameter:   id =  sflcadC10, name = sflcadC10
	reaction_vlcadC10_sflcadC10=0.75;

	reaction_vlcadC10=compartment_VMAT*function_4_vlcadC10_1(x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqlcad, global_par_KmlcadC10AcylCoAMAT, global_par_KmlcadC10EnoylCoAMAT, global_par_KmlcadC12AcylCoAMAT, global_par_KmlcadC12EnoylCoAMAT, global_par_KmlcadC14AcylCoAMAT, global_par_KmlcadC14EnoylCoAMAT, global_par_KmlcadC16AcylCoAMAT, global_par_KmlcadC16EnoylCoAMAT, global_par_KmlcadC8AcylCoAMAT, global_par_KmlcadC8EnoylCoAMAT, global_par_KmlcadFAD, global_par_KmlcadFADH, compartment_VMAT, global_par_Vlcad, reaction_vlcadC10_sflcadC10);

% Reaction: id = vmcadC12, name = vmcadC12	% Local Parameter:   id =  sfmcadC12, name = sfmcadC12
	reaction_vmcadC12_sfmcadC12=0.38;

	reaction_vmcadC12=compartment_VMAT*function_4_vmcadC12_1(x(19), x(20), x(16), x(17), x(29), x(30), x(25), x(26), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqmcad, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadFADH, compartment_VMAT, global_par_Vmcad, reaction_vmcadC12_sfmcadC12);

% Reaction: id = vmcadC10, name = vmcadC10	% Local Parameter:   id =  sfmcadC10, name = sfmcadC10
	reaction_vmcadC10_sfmcadC10=0.8;

	reaction_vmcadC10=compartment_VMAT*function_4_vmcadC10_1(x(19), x(20), x(16), x(17), x(29), x(30), x(25), x(26), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqmcad, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadFADH, compartment_VMAT, global_par_Vmcad, reaction_vmcadC10_sfmcadC10);

% Reaction: id = vmcadC8, name = vmcadC8	% Local Parameter:   id =  sfmcadC8, name = sfmcadC8
	reaction_vmcadC8_sfmcadC8=0.87;

	reaction_vmcadC8=compartment_VMAT*function_4_vmcadC8_1(x(19), x(20), x(16), x(17), x(29), x(30), x(25), x(26), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqmcad, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadFADH, compartment_VMAT, global_par_Vmcad, reaction_vmcadC8_sfmcadC8);

% Reaction: id = vmcadC6, name = vmcadC6	% Local Parameter:   id =  sfmcadC6, name = sfmcadC6
	reaction_vmcadC6_sfmcadC6=1.0;

	reaction_vmcadC6=compartment_VMAT*function_4_vmcadC6_1(x(19), x(20), x(16), x(17), x(29), x(30), x(25), x(26), x(22), x(23), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqmcad, global_par_KmmcadC10AcylCoAMAT, global_par_KmmcadC10EnoylCoAMAT, global_par_KmmcadC12AcylCoAMAT, global_par_KmmcadC12EnoylCoAMAT, global_par_KmmcadC4AcylCoAMAT, global_par_KmmcadC4EnoylCoAMAT, global_par_KmmcadC6AcylCoAMAT, global_par_KmmcadC6EnoylCoAMAT, global_par_KmmcadC8AcylCoAMAT, global_par_KmmcadC8EnoylCoAMAT, global_par_KmmcadFAD, global_par_KmmcadFADH, compartment_VMAT, global_par_Vmcad, reaction_vmcadC6_sfmcadC6);

% Reaction: id = vscadC4, name = vscadC4	% Local Parameter:   id =  sfscadC4, name = sfscadC4
	reaction_vscadC4_sfscadC4=1.0;

	reaction_vscadC4=compartment_VMAT*function_4_vscadC4_1(x(29), x(30), x(25), x(26), const_species_FADHMAT, const_species_FADtMAT, global_par_Keqscad, global_par_KmscadC4AcylCoAMAT, global_par_KmscadC4EnoylCoAMAT, global_par_KmscadC6AcylCoAMAT, global_par_KmscadC6EnoylCoAMAT, global_par_KmscadFAD, global_par_KmscadFADH, compartment_VMAT, global_par_Vscad, reaction_vscadC4_sfscadC4);

% Reaction: id = vmckatC6, name = vmckatC6	% Local Parameter:   id =  sfmckatC6, name = sfmckatC6
	reaction_vmckatC6_sfmckatC6=1.0;

	reaction_vmckatC6=compartment_VMAT*function_4_vmckatC6_1(x(32), x(19), const_species_C10KetoacylCoAMAT, x(16), const_species_C12KetoacylCoAMAT, x(13), const_species_C14KetoacylCoAMAT, x(10), const_species_C16KetoacylCoAMAT, x(31), x(29), x(25), x(27), x(22), const_species_C8KetoacylCoAMAT, x(33), global_par_Keqmckat, global_par_KmmckatAcetylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatCoAMAT, compartment_VMAT, global_par_Vmckat, reaction_vmckatC6_sfmckatC6);

% Reaction: id = vmckatC4, name = vmckatC4	% Local Parameter:   id =  sfmckatC4, name = sfmckatC4
	reaction_vmckatC4_sfmckatC4=0.49;

	reaction_vmckatC4=compartment_VMAT*function_4_vmckatC4_1(x(32), x(19), const_species_C10KetoacylCoAMAT, x(16), const_species_C12KetoacylCoAMAT, x(13), const_species_C14KetoacylCoAMAT, x(10), const_species_C16KetoacylCoAMAT, x(31), x(29), x(25), x(27), x(22), const_species_C8KetoacylCoAMAT, x(33), global_par_Keqmckat, global_par_KmmckatAcetylCoAMAT, global_par_KmmckatC10AcylCoAMAT, global_par_KmmckatC10KetoacylCoAMAT, global_par_KmmckatC12AcylCoAMAT, global_par_KmmckatC12KetoacylCoAMAT, global_par_KmmckatC14AcylCoAMAT, global_par_KmmckatC14KetoacylCoAMAT, global_par_KmmckatC16AcylCoAMAT, global_par_KmmckatC16KetoacylCoAMAT, global_par_KmmckatC4AcetoacylCoAMAT, global_par_KmmckatC4AcylCoAMAT, global_par_KmmckatC6AcylCoAMAT, global_par_KmmckatC6KetoacylCoAMAT, global_par_KmmckatC8AcylCoAMAT, global_par_KmmckatC8KetoacylCoAMAT, global_par_KmmckatCoAMAT, compartment_VMAT, global_par_Vmckat, reaction_vmckatC4_sfmckatC4);

% Reaction: id = vmtpC16, name = vmtpC16	% Local Parameter:   id =  sfmtpC16, name = sfmtpC16
	reaction_vmtpC16_sfmtpC16=1.0;

	reaction_vmtpC16=compartment_VMAT*function_4_vmtpC16_1(x(32), x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(31), x(25), x(22), x(23), x(33), global_par_Keqmtp, global_par_KicrotC4AcetoacylCoA, global_par_KmmtpAcetylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpNADMAT, const_species_NADHMAT, const_species_NADtMAT, compartment_VMAT, global_par_Vmtp, reaction_vmtpC16_sfmtpC16);

% Reaction: id = vmtpC14, name = vmtpC14	% Local Parameter:   id =  sfmtpC14, name = sfmtpC14
	reaction_vmtpC14_sfmtpC14=0.9;

	reaction_vmtpC14=compartment_VMAT*function_4_vmtpC14_1(x(32), x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(31), x(25), x(22), x(23), x(33), global_par_Keqmtp, global_par_KicrotC4AcetoacylCoA, global_par_KmmtpAcetylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpNADMAT, const_species_NADHMAT, const_species_NADtMAT, compartment_VMAT, global_par_Vmtp, reaction_vmtpC14_sfmtpC14);

% Reaction: id = vmtpC12, name = vmtpC12	% Local Parameter:   id =  sfmtpC12, name = sfmtpC12
	reaction_vmtpC12_sfmtpC12=0.81;

	reaction_vmtpC12=compartment_VMAT*function_4_vmtpC12_1(x(32), x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(31), x(25), x(22), x(23), x(33), global_par_Keqmtp, global_par_KicrotC4AcetoacylCoA, global_par_KmmtpAcetylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpNADMAT, const_species_NADHMAT, const_species_NADtMAT, compartment_VMAT, global_par_Vmtp, reaction_vmtpC12_sfmtpC12);

% Reaction: id = vmtpC10, name = vmtpC10	% Local Parameter:   id =  sfmtpC10, name = sfmtpC10
	reaction_vmtpC10_sfmtpC10=0.73;

	reaction_vmtpC10=compartment_VMAT*function_4_vmtpC10_1(x(32), x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(31), x(25), x(22), x(23), x(33), global_par_Keqmtp, global_par_KicrotC4AcetoacylCoA, global_par_KmmtpAcetylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpNADMAT, const_species_NADHMAT, const_species_NADtMAT, compartment_VMAT, global_par_Vmtp, reaction_vmtpC10_sfmtpC10);

% Reaction: id = vmtpC8, name = vmtpC8	% Local Parameter:   id =  sfmtpC8, name = sfmtpC8
	reaction_vmtpC8_sfmtpC8=0.34;

	reaction_vmtpC8=compartment_VMAT*function_4_vmtpC8_1(x(32), x(19), x(20), x(16), x(17), x(13), x(14), x(10), x(11), x(31), x(25), x(22), x(23), x(33), global_par_Keqmtp, global_par_KicrotC4AcetoacylCoA, global_par_KmmtpAcetylCoAMAT, global_par_KmmtpC10AcylCoAMAT, global_par_KmmtpC10EnoylCoAMAT, global_par_KmmtpC12AcylCoAMAT, global_par_KmmtpC12EnoylCoAMAT, global_par_KmmtpC14AcylCoAMAT, global_par_KmmtpC14EnoylCoAMAT, global_par_KmmtpC16AcylCoAMAT, global_par_KmmtpC16EnoylCoAMAT, global_par_KmmtpC6AcylCoAMAT, global_par_KmmtpC8AcylCoAMAT, global_par_KmmtpC8EnoylCoAMAT, global_par_KmmtpCoAMAT, global_par_KmmtpNADHMAT, global_par_KmmtpNADMAT, const_species_NADHMAT, const_species_NADtMAT, compartment_VMAT, global_par_Vmtp, reaction_vmtpC8_sfmtpC8);

% Reaction: id = vacesink, name = vacesink	% Local Parameter:   id =  K1acesink, name = K1acesink
	reaction_vacesink_K1acesink=30.0;
	% Local Parameter:   id =  Ksacesink, name = Ksacesink
	reaction_vacesink_Ksacesink=6000000.0;

	reaction_vacesink=compartment_VMAT*function_4_vacesink_1(x(32), reaction_vacesink_K1acesink, reaction_vacesink_Ksacesink, compartment_VMAT);

% Reaction: id = reaction_1, name = vcrmsC6	% Local Parameter:   id =  sfcrotC6, name = sfcrotC6
	reaction_reaction_1_sfcrotC6=0.83;
	% Local Parameter:   id =  sfmschadC6, name = sfmschadC6
	reaction_reaction_1_sfmschadC6=1.0;

	reaction_reaction_1=compartment_VMAT*CRMS_C6(reaction_reaction_1_sfcrotC6, global_par_Vcrot, reaction_reaction_1_sfmschadC6, global_par_Vmschad, x(26), const_species_species_1, global_par_KmcrotC6EnoylCoAMAT, global_par_KmmschadC6HydroxyacylCoAMAT, global_par_KmmschadNADMAT, x(27), const_species_NADHMAT, global_par_Keqcrot, global_par_Keqmschad, global_par_KmmschadC6KetoacylCoAMAT, x(31), global_par_KmmschadC4AcetoacylCoAMAT, global_par_KmmschadNADHMAT, x(30), global_par_KmcrotC4EnoylCoAMAT, global_par_KicrotC4AcetoacylCoA, compartment_VMAT);

% Reaction: id = reaction_2, name = vcrmsC4	% Local Parameter:   id =  sfcrotC4, name = sfcrotC4
	reaction_reaction_2_sfcrotC4=1.0;
	% Local Parameter:   id =  sfmschadC4, name = sfmschadC4
	reaction_reaction_2_sfmschadC4=0.67;

	reaction_reaction_2=compartment_VMAT*CRMS_C4(reaction_reaction_2_sfcrotC4, global_par_Vcrot, reaction_reaction_2_sfmschadC4, global_par_Vmschad, x(30), const_species_species_1, global_par_KmcrotC4EnoylCoAMAT, global_par_KmmschadC4HydroxyacylCoAMAT, global_par_KmmschadNADMAT, x(31), const_species_NADHMAT, global_par_Keqcrot, global_par_Keqmschad, global_par_KmmschadC4AcetoacylCoAMAT, x(27), global_par_KmmschadC6KetoacylCoAMAT, global_par_KmmschadNADHMAT, x(26), global_par_KmcrotC6EnoylCoAMAT, global_par_KicrotC4AcetoacylCoA, compartment_VMAT);

% Species:   id = CarCYT, name = CarCYT, constant	const_species_CarCYT=400.0;

% Species:   id = CoACYT, name = CoACYT, constant	const_species_CoACYT=140.0;

% Species:   id = MalCoACYT, name = MalCoACYT, constant	const_species_MalCoACYT=0.0;

% Species:   id = C16HydroxyacylCoAMAT, name = C16HydroxyacylCoAMAT, constant	const_species_C16HydroxyacylCoAMAT=0.0;

% Species:   id = C16KetoacylCoAMAT, name = C16KetoacylCoAMAT, constant	const_species_C16KetoacylCoAMAT=0.0;

% Species:   id = C14HydroxyacylCoAMAT, name = C14HydroxyacylCoAMAT, constant	const_species_C14HydroxyacylCoAMAT=0.0;

% Species:   id = C14KetoacylCoAMAT, name = C14KetoacylCoAMAT, constant	const_species_C14KetoacylCoAMAT=0.0;

% Species:   id = C12HydroxyacylCoAMAT, name = C12HydroxyacylCoAMAT, constant	const_species_C12HydroxyacylCoAMAT=0.0;

% Species:   id = C12KetoacylCoAMAT, name = C12KetoacylCoAMAT, constant	const_species_C12KetoacylCoAMAT=0.0;

% Species:   id = C10HydroxyacylCoAMAT, name = C10HydroxyacylCoAMAT, constant	const_species_C10HydroxyacylCoAMAT=0.0;

% Species:   id = C10KetoacylCoAMAT, name = C10KetoacylCoAMAT, constant	const_species_C10KetoacylCoAMAT=0.0;

% Species:   id = C8HydroxyacylCoAMAT, name = C8HydroxyacylCoAMAT, constant	const_species_C8HydroxyacylCoAMAT=0.0;

% Species:   id = C8KetoacylCoAMAT, name = C8KetoacylCoAMAT, constant	const_species_C8KetoacylCoAMAT=0.0;

% Species:   id = C6HydroxyacylCoAMAT, name = C6HydroxyacylCoAMAT, constant	const_species_C6HydroxyacylCoAMAT=0.0;

% Species:   id = C4HydroxyacylCoAMAT, name = C4HydroxyacylCoAMAT, constant	const_species_C4HydroxyacylCoAMAT=0.0;

% Species:   id = FADHMAT, name = FADHMAT, constant	const_species_FADHMAT=0.46;

% Species:   id = NADHMAT, name = NADHMAT, constant	const_species_NADHMAT=16.0;

% Species:   id = CarMAT, name = CarMAT, constant	const_species_CarMAT=950.0;

% Species:   id = FADtMAT, name = FADtMAT, constant	const_species_FADtMAT=0.77;

% Species:   id = NADtMAT, name = NADtMAT, constant	const_species_NADtMAT=250.0;

% Species:   id = CoAMATt, name = CoAMATt, constant	const_species_CoAMATt=5000.0;

% Species:   id = species_1, name = NAD, constant	const_species_species_1=234.0;

	xdot=zeros(33,1);
	
% Species:   id = C16AcylCarCYT, name = C16AcylCarCYT, affected by kineticLaw
	xdot(1) = (1/(compartment_VCYT))*(( 1.0 * reaction_vcpt1C16) + (-1.0 * reaction_vcactC16));
	
% Species:   id = C14AcylCarCYT, name = C14AcylCarCYT, affected by kineticLaw
	xdot(2) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC14));
	
% Species:   id = C12AcylCarCYT, name = C12AcylCarCYT, affected by kineticLaw
	xdot(3) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC12));
	
% Species:   id = C10AcylCarCYT, name = C10AcylCarCYT, affected by kineticLaw
	xdot(4) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC10));
	
% Species:   id = C8AcylCarCYT, name = C8AcylCarCYT, affected by kineticLaw
	xdot(5) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC8));
	
% Species:   id = C6AcylCarCYT, name = C6AcylCarCYT, affected by kineticLaw
	xdot(6) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC6));
	
% Species:   id = C4AcylCarCYT, name = C4AcylCarCYT, affected by kineticLaw
	xdot(7) = (1/(compartment_VCYT))*((-1.0 * reaction_vcactC4));
	
% Species:   id = C16AcylCoACYT, name = C16AcylCoACYT, involved in a rule 	xdot(8) = x(8);
	
% Species:   id = C16AcylCarMAT, name = C16AcylCarMAT, affected by kineticLaw
	xdot(9) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC16) + (-1.0 * reaction_vcpt2C16));
	
% Species:   id = C16AcylCoAMAT, name = C16AcylCoAMAT, affected by kineticLaw
	xdot(10) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C16) + (-1.0 * reaction_vvlcadC16) + (-1.0 * reaction_vlcadC16));
	
% Species:   id = C16EnoylCoAMAT, name = C16EnoylCoAMAT, affected by kineticLaw
	xdot(11) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC16) + ( 1.0 * reaction_vlcadC16) + (-1.0 * reaction_vmtpC16));
	
% Species:   id = C14AcylCarMAT, name = C14AcylCarMAT, affected by kineticLaw
	xdot(12) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC14) + (-1.0 * reaction_vcpt2C14));
	
% Species:   id = C14AcylCoAMAT, name = C14AcylCoAMAT, affected by kineticLaw
	xdot(13) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C14) + (-1.0 * reaction_vvlcadC14) + (-1.0 * reaction_vlcadC14) + ( 1.0 * reaction_vmtpC16));
	
% Species:   id = C14EnoylCoAMAT, name = C14EnoylCoAMAT, affected by kineticLaw
	xdot(14) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC14) + ( 1.0 * reaction_vlcadC14) + (-1.0 * reaction_vmtpC14));
	
% Species:   id = C12AcylCarMAT, name = C12AcylCarMAT, affected by kineticLaw
	xdot(15) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC12) + (-1.0 * reaction_vcpt2C12));
	
% Species:   id = C12AcylCoAMAT, name = C12AcylCoAMAT, affected by kineticLaw
	xdot(16) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C12) + (-1.0 * reaction_vvlcadC12) + (-1.0 * reaction_vlcadC12) + (-1.0 * reaction_vmcadC12) + ( 1.0 * reaction_vmtpC14));
	
% Species:   id = C12EnoylCoAMAT, name = C12EnoylCoAMAT, affected by kineticLaw
	xdot(17) = (1/(compartment_VMAT))*(( 1.0 * reaction_vvlcadC12) + ( 1.0 * reaction_vlcadC12) + ( 1.0 * reaction_vmcadC12) + (-1.0 * reaction_vmtpC12));
	
% Species:   id = C10AcylCarMAT, name = C10AcylCarMAT, affected by kineticLaw
	xdot(18) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC10) + (-1.0 * reaction_vcpt2C10));
	
% Species:   id = C10AcylCoAMAT, name = C10AcylCoAMAT, affected by kineticLaw
	xdot(19) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C10) + (-1.0 * reaction_vlcadC10) + (-1.0 * reaction_vmcadC10) + ( 1.0 * reaction_vmtpC12));
	
% Species:   id = C10EnoylCoAMAT, name = C10EnoylCoAMAT, affected by kineticLaw
	xdot(20) = (1/(compartment_VMAT))*(( 1.0 * reaction_vlcadC10) + ( 1.0 * reaction_vmcadC10) + (-1.0 * reaction_vmtpC10));
	
% Species:   id = C8AcylCarMAT, name = C8AcylCarMAT, affected by kineticLaw
	xdot(21) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC8) + (-1.0 * reaction_vcpt2C8));
	
% Species:   id = C8AcylCoAMAT, name = C8AcylCoAMAT, affected by kineticLaw
	xdot(22) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C8) + (-1.0 * reaction_vmcadC8) + ( 1.0 * reaction_vmtpC10));
	
% Species:   id = C8EnoylCoAMAT, name = C8EnoylCoAMAT, affected by kineticLaw
	xdot(23) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmcadC8) + (-1.0 * reaction_vmtpC8));
	
% Species:   id = C6AcylCarMAT, name = C6AcylCarMAT, affected by kineticLaw
	xdot(24) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC6) + (-1.0 * reaction_vcpt2C6));
	
% Species:   id = C6AcylCoAMAT, name = C6AcylCoAMAT, affected by kineticLaw
	xdot(25) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C6) + (-1.0 * reaction_vmcadC6) + ( 1.0 * reaction_vmtpC8));
	
% Species:   id = C6EnoylCoAMAT, name = C6EnoylCoAMAT, affected by kineticLaw
	xdot(26) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmcadC6) + (-1.0 * reaction_reaction_1));
	
% Species:   id = C6KetoacylCoAMAT, name = C6KetoacylCoAMAT, affected by kineticLaw
	xdot(27) = (1/(compartment_VMAT))*((-1.0 * reaction_vmckatC6) + ( 1.0 * reaction_reaction_1));
	
% Species:   id = C4AcylCarMAT, name = C4AcylCarMAT, affected by kineticLaw
	xdot(28) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcactC4) + (-1.0 * reaction_vcpt2C4));
	
% Species:   id = C4AcylCoAMAT, name = C4AcylCoAMAT, affected by kineticLaw
	xdot(29) = (1/(compartment_VMAT))*(( 1.0 * reaction_vcpt2C4) + (-1.0 * reaction_vscadC4) + ( 1.0 * reaction_vmckatC6));
	
% Species:   id = C4EnoylCoAMAT, name = C4EnoylCoAMAT, affected by kineticLaw
	xdot(30) = (1/(compartment_VMAT))*(( 1.0 * reaction_vscadC4) + (-1.0 * reaction_reaction_2));
	
% Species:   id = C4AcetoacylCoAMAT, name = C4AcetoacylCoAMAT, affected by kineticLaw
	xdot(31) = (1/(compartment_VMAT))*((-1.0 * reaction_vmckatC4) + ( 1.0 * reaction_reaction_2));
	
% Species:   id = AcetylCoAMAT, name = AcetylCoAMAT, affected by kineticLaw
	xdot(32) = (1/(compartment_VMAT))*(( 1.0 * reaction_vmckatC6) + ( 2.0 * reaction_vmckatC4) + ( 1.0 * reaction_vmtpC16) + ( 1.0 * reaction_vmtpC14) + ( 1.0 * reaction_vmtpC12) + ( 1.0 * reaction_vmtpC10) + ( 1.0 * reaction_vmtpC8) + (-1.0 * reaction_vacesink));
	
% Species:   id = CoAMAT, name = CoAMAT, involved in a rule 	xdot(33) = x(33);
end

function z=MTP(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Ki1,Keq,S1,S2,S3,S4,S5,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8,I1), z=(sf*V*(S1*(S7-P7)*S8/(Kms1*Kms7*Kms8)-P1*P7*P8/(Kms1*Kms7*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+P6/Kmp6+I1/Ki1)*(1+(S7-P7)/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8)));end

function z=MCKATB(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P8*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8)));end

function z=MCKATA(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8)));end

function z=RES(Ks,S,K1), z=(Ks*(S-K1));end

function z=SCAD(sf,V,Kms1,Kms2,Kms3,Kmp1,Kmp2,Kmp3,Keq,S1,S2,S3,P1,P2,P3), z=(sf*V*(S1*(S3-P3)/(Kms1*Kms3)-P1*P3/(Kms1*Kms3*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2)*(1+(S3-P3)/Kms3+P3/Kmp3)));end

function z=LCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Keq,S1,S2,S3,S4,S5,S6,P1,P2,P3,P4,P5,P6), z=(sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6)));end

function z=CPT1(sf,V,Kms1,Kms2,Kmp1,Kmp2,Ki1,Keq,S1,S2,P1,P2,I1,n), z=(sf*V*(S1*S2/(Kms1*Kms2)-P1*P2/(Kms1*Kms2*Keq))/((1+S1/Kms1+P1/Kmp1+(I1/Ki1)^n)*(1+S2/Kms2+P2/Kmp2)));end

function z=VLCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kmp1,Kmp2,Kmp3,Kmp4,Keq,S1,S2,S3,S4,P1,P2,P3,P4), z=(sf*V*(S1*(S4-P4)/(Kms1*Kms4)-P1*P4/(Kms1*Kms4*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3)*(1+(S4-P4)/Kms4+P4/Kmp4)));end

function z=CPT2(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kms7,Kms8,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Kmp7,Kmp8,Keq,S1,S2,S3,S4,S5,S6,S7,S8,P1,P2,P3,P4,P5,P6,P7,P8), z=(sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8)));end

function z=MCAD(sf,V,Kms1,Kms2,Kms3,Kms4,Kms5,Kms6,Kmp1,Kmp2,Kmp3,Kmp4,Kmp5,Kmp6,Keq,S1,S2,S3,S4,S5,S6,P1,P2,P3,P4,P5,P6), z=(sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6)));end

function z=function_4_vcpt1C16_1(C16AcylCarCYT,C16AcylCoACYT,CarCYT,CoACYT,Keqcpt1,Kicpt1MalCoACYT,Kmcpt1C16AcylCarCYT,Kmcpt1C16AcylCoACYT,Kmcpt1CarCYT,Kmcpt1CoACYT,MalCoACYT,VCYT,Vcpt1,ncpt1,sfcpt1C16,CPT1(sfcpt1C16,Vcpt1,Kmcpt1C16AcylCoACYT,Kmcpt1CarCYT,Kmcpt1C16AcylCarCYT,Kmcpt1CoACYT,Kicpt1MalCoACYT,Keqcpt1,C16AcylCoACYT,CarCYT,C16AcylCarCYT,CoACYT,MalCoACYT), z=(ncpt1)/VCYT);end

function z=function_4_vcactC16_1(C16AcylCarCYT,C16AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC16AcylCarCYT,KicactCarCYT,KmcactC16AcylCarCYT,KmcactC16AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C16AcylCarCYT*CarMAT-C16AcylCarMAT*CarCYT/Keqcact)/(C16AcylCarCYT*CarMAT+KmcactCarMAT*C16AcylCarCYT+KmcactC16AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C16AcylCarMAT*(1+C16AcylCarCYT/KicactC16AcylCarCYT)+CarCYT*(KmcactC16AcylCarMAT+C16AcylCarMAT))));end

function z=function_4_vcactC14_1(C14AcylCarCYT,C14AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC14AcylCarCYT,KicactCarCYT,KmcactC14AcylCarCYT,KmcactC14AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C14AcylCarCYT*CarMAT-C14AcylCarMAT*CarCYT/Keqcact)/(C14AcylCarCYT*CarMAT+KmcactCarMAT*C14AcylCarCYT+KmcactC14AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C14AcylCarMAT*(1+C14AcylCarCYT/KicactC14AcylCarCYT)+CarCYT*(KmcactC14AcylCarMAT+C14AcylCarMAT))));end

function z=function_4_vcactC12_1(C12AcylCarCYT,C12AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC12AcylCarCYT,KicactCarCYT,KmcactC12AcylCarCYT,KmcactC12AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C12AcylCarCYT*CarMAT-C12AcylCarMAT*CarCYT/Keqcact)/(C12AcylCarCYT*CarMAT+KmcactCarMAT*C12AcylCarCYT+KmcactC12AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C12AcylCarMAT*(1+C12AcylCarCYT/KicactC12AcylCarCYT)+CarCYT*(KmcactC12AcylCarMAT+C12AcylCarMAT))));end

function z=function_4_vcactC10_1(C10AcylCarCYT,C10AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC10AcylCarCYT,KicactCarCYT,KmcactC10AcylCarCYT,KmcactC10AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C10AcylCarCYT*CarMAT-C10AcylCarMAT*CarCYT/Keqcact)/(C10AcylCarCYT*CarMAT+KmcactCarMAT*C10AcylCarCYT+KmcactC10AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C10AcylCarMAT*(1+C10AcylCarCYT/KicactC10AcylCarCYT)+CarCYT*(KmcactC10AcylCarMAT+C10AcylCarMAT))));end

function z=function_4_vcactC8_1(C8AcylCarCYT,C8AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC8AcylCarCYT,KicactCarCYT,KmcactC8AcylCarCYT,KmcactC8AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C8AcylCarCYT*CarMAT-C8AcylCarMAT*CarCYT/Keqcact)/(C8AcylCarCYT*CarMAT+KmcactCarMAT*C8AcylCarCYT+KmcactC8AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C8AcylCarMAT*(1+C8AcylCarCYT/KicactC8AcylCarCYT)+CarCYT*(KmcactC8AcylCarMAT+C8AcylCarMAT))));end

function z=function_4_vcactC6_1(C6AcylCarCYT,C6AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC6AcylCarCYT,KicactCarCYT,KmcactC6AcylCarCYT,KmcactC6AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C6AcylCarCYT*CarMAT-C6AcylCarMAT*CarCYT/Keqcact)/(C6AcylCarCYT*CarMAT+KmcactCarMAT*C6AcylCarCYT+KmcactC6AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C6AcylCarMAT*(1+C6AcylCarCYT/KicactC6AcylCarCYT)+CarCYT*(KmcactC6AcylCarMAT+C6AcylCarMAT))));end

function z=function_4_vcactC4_1(C4AcylCarCYT,C4AcylCarMAT,CarCYT,CarMAT,Keqcact,KicactC4AcylCarCYT,KicactCarCYT,KmcactC4AcylCarCYT,KmcactC4AcylCarMAT,KmcactCarCYT,KmcactCarMAT,Vfcact,Vrcact), z=(Vfcact*(C4AcylCarCYT*CarMAT-C4AcylCarMAT*CarCYT/Keqcact)/(C4AcylCarCYT*CarMAT+KmcactCarMAT*C4AcylCarCYT+KmcactC4AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C4AcylCarMAT*(1+C4AcylCarCYT/KicactC4AcylCarCYT)+CarCYT*(KmcactC4AcylCarMAT+C4AcylCarMAT))));end

function z=function_4_vcpt2C16_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C16,CPT2(sfcpt2C16,Vcpt2,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C14_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C14,CPT2(sfcpt2C14,Vcpt2,Kmcpt2C14AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C14AcylCarMAT,C16AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C12_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C12,CPT2(sfcpt2C12,Vcpt2,Kmcpt2C12AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C12AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C10_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C10,CPT2(sfcpt2C10,Vcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C10AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C8_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C8,CPT2(sfcpt2C8,Vcpt2,Kmcpt2C8AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C8AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C8AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C6_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C6,CPT2(sfcpt2C6,Vcpt2,Kmcpt2C6AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C6AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C4AcylCarMAT,CoAMAT,C6AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C4AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vcpt2C4_1(C10AcylCarMAT,C10AcylCoAMAT,C12AcylCarMAT,C12AcylCoAMAT,C14AcylCarMAT,C14AcylCoAMAT,C16AcylCarMAT,C16AcylCoAMAT,C4AcylCarMAT,C4AcylCoAMAT,C6AcylCarMAT,C6AcylCoAMAT,C8AcylCarMAT,C8AcylCoAMAT,CarMAT,CoAMAT,Keqcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C4AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2CarMAT,Kmcpt2CoAMAT,VMAT,Vcpt2,sfcpt2C4,CPT2(sfcpt2C4,Vcpt2,Kmcpt2C4AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C4AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT), z=(CarMAT)/VMAT);end

function z=function_4_vvlcadC16_1(C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,FADHMAT,FADtMAT,Keqvlcad,KmvlcadC12AcylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadFAD,KmvlcadFADH,VMAT,Vvlcad,sfvlcadC16,VLCAD(sfvlcadC16,Vvlcad,KmvlcadC16AcylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadC12AcylCoAMAT,KmvlcadFAD,KmvlcadC16EnoylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,FADtMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vvlcadC14_1(C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,FADHMAT,FADtMAT,Keqvlcad,KmvlcadC12AcylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadFAD,KmvlcadFADH,VMAT,Vvlcad,sfvlcadC14,VLCAD(sfvlcadC14,Vvlcad,KmvlcadC14AcylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC12AcylCoAMAT,KmvlcadFAD,KmvlcadC14EnoylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vvlcadC12_1(C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,FADHMAT,FADtMAT,Keqvlcad,KmvlcadC12AcylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadFAD,KmvlcadFADH,VMAT,Vvlcad,sfvlcadC12,VLCAD(sfvlcadC12,Vvlcad,KmvlcadC12AcylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadFAD,KmvlcadC12EnoylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,FADtMAT,C12EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vlcadC16_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqlcad,KmlcadC10AcylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFAD,KmlcadFADH,VMAT,Vlcad,sflcadC16,LCAD(sflcadC16,Vlcad,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vlcadC14_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqlcad,KmlcadC10AcylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFAD,KmlcadFADH,VMAT,Vlcad,sflcadC14,LCAD(sflcadC14,Vlcad,KmlcadC14AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC14EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vlcadC12_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqlcad,KmlcadC10AcylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFAD,KmlcadFADH,VMAT,Vlcad,sflcadC12,LCAD(sflcadC12,Vlcad,KmlcadC12AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC12EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vlcadC10_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqlcad,KmlcadC10AcylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFAD,KmlcadFADH,VMAT,Vlcad,sflcadC10,LCAD(sflcadC10,Vlcad,KmlcadC10AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC10EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C10EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vmcadC12_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C4AcylCoAMAT,C4EnoylCoAMAT,C6AcylCoAMAT,C6EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqmcad,KmmcadC10AcylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadFAD,KmmcadFADH,VMAT,Vmcad,sfmcadC12,MCAD(sfmcadC12,Vmcad,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vmcadC10_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C4AcylCoAMAT,C4EnoylCoAMAT,C6AcylCoAMAT,C6EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqmcad,KmmcadC10AcylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadFAD,KmmcadFADH,VMAT,Vmcad,sfmcadC10,MCAD(sfmcadC10,Vmcad,KmmcadC10AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC10EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C10AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C10EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vmcadC8_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C4AcylCoAMAT,C4EnoylCoAMAT,C6AcylCoAMAT,C6EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqmcad,KmmcadC10AcylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadFAD,KmmcadFADH,VMAT,Vmcad,sfmcadC8,MCAD(sfmcadC8,Vmcad,KmmcadC8AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC8EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C8AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C8EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vmcadC6_1(C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C4AcylCoAMAT,C4EnoylCoAMAT,C6AcylCoAMAT,C6EnoylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,FADHMAT,FADtMAT,Keqmcad,KmmcadC10AcylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadFAD,KmmcadFADH,VMAT,Vmcad,sfmcadC6,MCAD(sfmcadC6,Vmcad,KmmcadC6AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC6EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C6AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C6EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,C4EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vscadC4_1(C4AcylCoAMAT,C4EnoylCoAMAT,C6AcylCoAMAT,C6EnoylCoAMAT,FADHMAT,FADtMAT,Keqscad,KmscadC4AcylCoAMAT,KmscadC4EnoylCoAMAT,KmscadC6AcylCoAMAT,KmscadC6EnoylCoAMAT,KmscadFAD,KmscadFADH,VMAT,Vscad,sfscadC4,SCAD(sfscadC4,Vscad,KmscadC4AcylCoAMAT,KmscadC6AcylCoAMAT,KmscadFAD,KmscadC4EnoylCoAMAT,KmscadC6EnoylCoAMAT,KmscadFADH,Keqscad,C4AcylCoAMAT,C6AcylCoAMAT,FADtMAT,C4EnoylCoAMAT,C6EnoylCoAMAT), z=(FADHMAT)/VMAT);end

function z=function_4_vmckatC6_1(AcetylCoAMAT,C10AcylCoAMAT,C10KetoacylCoAMAT,C12AcylCoAMAT,C12KetoacylCoAMAT,C14AcylCoAMAT,C14KetoacylCoAMAT,C16AcylCoAMAT,C16KetoacylCoAMAT,C4AcetoacylCoAMAT,C4AcylCoAMAT,C6AcylCoAMAT,C6KetoacylCoAMAT,C8AcylCoAMAT,C8KetoacylCoAMAT,CoAMAT,Keqmckat,KmmckatAcetylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC4AcetoacylCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatC6KetoacylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatCoAMAT,VMAT,Vmckat,sfmckatC6,MCKATA(sfmckatC6,Vmckat,KmmckatC6KetoacylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatC4AcetoacylCoAMAT,KmmckatCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatAcetylCoAMAT,Keqmckat,C6KetoacylCoAMAT,C16KetoacylCoAMAT,C14KetoacylCoAMAT,C12KetoacylCoAMAT,C10KetoacylCoAMAT,C8KetoacylCoAMAT,C4AcetoacylCoAMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT), z=(AcetylCoAMAT)/VMAT);end

function z=function_4_vmckatC4_1(AcetylCoAMAT,C10AcylCoAMAT,C10KetoacylCoAMAT,C12AcylCoAMAT,C12KetoacylCoAMAT,C14AcylCoAMAT,C14KetoacylCoAMAT,C16AcylCoAMAT,C16KetoacylCoAMAT,C4AcetoacylCoAMAT,C4AcylCoAMAT,C6AcylCoAMAT,C6KetoacylCoAMAT,C8AcylCoAMAT,C8KetoacylCoAMAT,CoAMAT,Keqmckat,KmmckatAcetylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC4AcetoacylCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatC6KetoacylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatCoAMAT,VMAT,Vmckat,sfmckatC4,MCKATB(sfmckatC4,Vmckat,KmmckatC4AcetoacylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatC6KetoacylCoAMAT,KmmckatCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatAcetylCoAMAT,Keqmckat,C4AcetoacylCoAMAT,C16KetoacylCoAMAT,C14KetoacylCoAMAT,C12KetoacylCoAMAT,C10KetoacylCoAMAT,C8KetoacylCoAMAT,C6KetoacylCoAMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT), z=(AcetylCoAMAT)/VMAT);end

function z=function_4_vmtpC16_1(AcetylCoAMAT,C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C4AcetoacylCoAMAT,C6AcylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,CoAMAT,Keqmtp,KicrotC4AcetoacylCoA,KmmtpAcetylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpCoAMAT,KmmtpNADHMAT,KmmtpNADMAT,NADHMAT,NADtMAT,VMAT,Vmtp,sfmtpC16,MTP(sfmtpC16,Vmtp,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT), z=(C4AcetoacylCoAMAT)/VMAT);end

function z=function_4_vmtpC14_1(AcetylCoAMAT,C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C4AcetoacylCoAMAT,C6AcylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,CoAMAT,Keqmtp,KicrotC4AcetoacylCoA,KmmtpAcetylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpCoAMAT,KmmtpNADHMAT,KmmtpNADMAT,NADHMAT,NADtMAT,VMAT,Vmtp,sfmtpC14,MTP(sfmtpC14,Vmtp,KmmtpC14EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT), z=(C4AcetoacylCoAMAT)/VMAT);end

function z=function_4_vmtpC12_1(AcetylCoAMAT,C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C4AcetoacylCoAMAT,C6AcylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,CoAMAT,Keqmtp,KicrotC4AcetoacylCoA,KmmtpAcetylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpCoAMAT,KmmtpNADHMAT,KmmtpNADMAT,NADHMAT,NADtMAT,VMAT,Vmtp,sfmtpC12,MTP(sfmtpC12,Vmtp,KmmtpC12EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C12EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT), z=(C4AcetoacylCoAMAT)/VMAT);end

function z=function_4_vmtpC10_1(AcetylCoAMAT,C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C4AcetoacylCoAMAT,C6AcylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,CoAMAT,Keqmtp,KicrotC4AcetoacylCoA,KmmtpAcetylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpCoAMAT,KmmtpNADHMAT,KmmtpNADMAT,NADHMAT,NADtMAT,VMAT,Vmtp,sfmtpC10,MTP(sfmtpC10,Vmtp,KmmtpC10EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C10EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C8AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT), z=(C4AcetoacylCoAMAT)/VMAT);end

function z=function_4_vmtpC8_1(AcetylCoAMAT,C10AcylCoAMAT,C10EnoylCoAMAT,C12AcylCoAMAT,C12EnoylCoAMAT,C14AcylCoAMAT,C14EnoylCoAMAT,C16AcylCoAMAT,C16EnoylCoAMAT,C4AcetoacylCoAMAT,C6AcylCoAMAT,C8AcylCoAMAT,C8EnoylCoAMAT,CoAMAT,Keqmtp,KicrotC4AcetoacylCoA,KmmtpAcetylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpCoAMAT,KmmtpNADHMAT,KmmtpNADMAT,NADHMAT,NADtMAT,VMAT,Vmtp,sfmtpC8,MTP(sfmtpC8,Vmtp,KmmtpC8EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C8EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,NADtMAT,CoAMAT,C6AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,NADHMAT,AcetylCoAMAT), z=(C4AcetoacylCoAMAT)/VMAT);end

function z=function_4_vacesink_1(AcetylCoAMAT,K1acesink,Ksacesink,VMAT,RES(Ksacesink,AcetylCoAMAT), z=(K1acesink)/VMAT);end

function z=CRMS(sfc,Vc,sfm,Vm,S1,P0,Kms1,Kmms1,Kmp0,P1,P3,Keqc,Keqm,Kmp1,P2,Kmp2,Kmp3,S2,Kms2,I1,Ki), z=(sfc*Vc*sfm*Vm*(S1*P0/(Kms1*Kmms1*Kmp0)-P1*P3/(Kms1*Kmms1*Kmp0*Keqc*Keqm))/(sfc*Vc*(1+P1/Kmp1+P2/Kmp2)*(1+P0/Kmp0+P3/Kmp3)/(Kms1*Keqc)+sfm*Vm*P0*(1+S1/Kms1+S2/Kms2+I1/Ki)/(Kmms1*Kmp0)));end

function z=CRMS_C6(sfcrotC6,Vcrot,sfmschadC6,Vmschad,C6EnoylCoAMAT,NAD,KmcrotC6EnoylCoAMAT,KmmschadC6HydroxyacylCoAMAT,KmmschadNADMAT,C6KetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC6KetoacylCoAMAT,C4AcetoacylCoAMAT,KmmschadC4AcetoacylCoAMAT,KmmschadNADHMAT,C4EnoylCoAMAT,KmcrotC4EnoylCoAMAT,KicrotC4AcetoacylCoA,VMAT,CRMS(sfcrotC6,Vcrot,sfmschadC6,Vmschad,C6EnoylCoAMAT,NAD,KmcrotC6EnoylCoAMAT,KmmschadC6HydroxyacylCoAMAT,KmmschadNADMAT,C6KetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC6KetoacylCoAMAT,C4AcetoacylCoAMAT,KmmschadC4AcetoacylCoAMAT,KmmschadNADHMAT,C4EnoylCoAMAT,KmcrotC4EnoylCoAMAT,C4AcetoacylCoAMAT), z=(KicrotC4AcetoacylCoA)/VMAT);end

function z=CRMS_C4(sfcrotC4,Vcrot,sfmschadC4,Vmschad,C4EnoylCoAMAT,NAD,KmcrotC4EnoylCoAMAT,KmmschadC4HydroxyacylCoAMAT,KmmschadNADMAT,C4AcetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC4AcetoacylCoAMAT,C6KetoacylCoAMAT,KmmschadC6KetoacylCoAMAT,KmmschadNADHMAT,C6EnoylCoAMAT,KmcrotC6EnoylCoAMAT,KicrotC4AcetoacylCoA,VMAT,CRMS(sfcrotC4,Vcrot,sfmschadC4,Vmschad,C4EnoylCoAMAT,NAD,KmcrotC4EnoylCoAMAT,KmmschadC4HydroxyacylCoAMAT,KmmschadNADMAT,C4AcetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC4AcetoacylCoAMAT,C6KetoacylCoAMAT,KmmschadC6KetoacylCoAMAT,KmmschadNADHMAT,C6EnoylCoAMAT,KmcrotC6EnoylCoAMAT,C4AcetoacylCoAMAT), z=(KicrotC4AcetoacylCoA)/VMAT);end

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


