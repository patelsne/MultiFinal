% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: C:\Users\Supersneha\Desktop\Coding\MATLAB\GDP.xlsx
%    Worksheet: Data
%
% Auto-generated by MATLAB on 22-Apr-2019 22:12:18

% Setup the Import Options
opts = spreadsheetImportOptions("NumVariables", 2);

% Specify sheet and range
opts.Sheet = "Data";
opts.DataRange = "B6:C34";

% Specify column names and types
opts.VariableNames = ["VarName2", "GDPinbillionchained2012USdollars"];
opts.VariableTypes = ["double", "double"];

% Import the data
tbl = readtable("C:\Users\Supersneha\Desktop\Coding\MATLAB\GDP.xlsx", opts, "UseExcel", false);

% Convert to output type
VarName2 = tbl.VarName2;
GDPinbillionchained2012USdollars = tbl.GDPinbillionchained2012USdollars;

% Clear temporary variables
clear opts tbl

figure;plot(VarName2,GDPinbillionchained2012USdollars)
grid on;
xlabel('Year');
ylabel('GDP (in billions of 2012 U.S. Dollars)');
title('United States Gross Domestic Product (GDP) from 1990 to 2018')
hold on;

%attempt to fit data hehe
sumOfX = sum(VarName2);
sumX2 = sum(VarName2.^2);
sumOfY = sum(GDPinbillionchained2012USdollars);
sumOfProductOfXAndY = sum(VarName2.*GDPinbillionchained2012USdollars);
n = length(VarName2);
slope = (n*sumOfProductOfXAndY - sumOfX*sumOfY)/(n*sumX2 - sumOfX^2)
y_intercept = (1/n)*(sumOfY - slope*sumOfX)

t = linspace(VarName2(1),VarName2(n));
i = t;
j = slope*t + y_intercept;
plot(i,j);

