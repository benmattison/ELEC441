%% DiabetesVariables.m
% This script defines the parameters of the model. The values are read from
% the workspace and used in Simulink for all simulations. This script is
% useful for for modifying the uncertainties on various parameters to test
% for robustness.

Ki_uncertainty = 0;
mealsize_uncertainty = 0;

Km = 4;
Tm = 50;
Tdm = 15;
Ki = -0.075*(1+Ki_uncertainty);
Ti = 140;
Tdi = 25;
break_amt = 25/10*(1+mealsize_uncertainty);
lunch_amt = 40/15*(1+mealsize_uncertainty);
dinner_amt = 60/20*(1+mealsize_uncertainty);

break_timing = 0;
lunch_timing = 0;
dinner_timing = 0;