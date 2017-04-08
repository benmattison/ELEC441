%% plotSetup.m
% This script modifies the figure output from "Simulation Data Inspector"
% in Simulink. The data inspector has an option "Send to Figure" which is
% used before running this script.

figure(1);
subplot(3,1,1);
title('Basic Gain Feedforward Meal Timing Robustness Test');
xlabel('Time (minutes)');
ylabel('Glucose Concentration (mg/dl)');
hold on;
time = linspace(0,48*60,1000);
hyper = linspace(180,180,1000);
hypo = linspace(70,70,1000);
plot(time,hyper,'b--');
plot(time,hypo,'r--');
ylim([65 250]);
legend('Standard','Close Breakfast-Lunch','Close Lunch-Dinner','Hyperglycemic limit','Hypoglycemic limit');

subplot(3,1,2);
xlabel('Time (minutes)');
ylabel('Carb Input (g)');
legend('Standard','Close Breakfast-Lunch','Close Lunch-Dinner');

subplot(3,1,3);
xlabel('Time (minutes)');
ylabel('Insulin Infusion Rate (mU/min)');
legend('Standard','Close Breakfast-Lunch','Close Lunch-Dinner');