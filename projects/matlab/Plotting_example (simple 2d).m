clear;
clf;
hold on; %each thing I plot from now on will not overrite the last thing
%hold off; %each thing i plot will override the last thing

plot( [1,2,3,4,5], [15,5,2,7,8], 'r--' );

x = [1:5];
y = [5,13,2,16,7];

plot( x, y, 'b-.' );

ylabel('The text of the y-label ', 'FontSize', 18);
xlabel('The text of the x-label', 'FontSize', 18);
title('Title of the graph', 'FontSize', 24);
legend('Line1 title', 'Line2 title');
%axis([xMin, xMax, yMin, yMax]);



%figure; %creates a new figure
%clf; %clears the figure


%matrices
%[1,2,3,4] = [1:4] %these two are equivalent
%[1:.5:3] = linspace(1,3, 5) %these two are equivalent


%other stuff
%help funcName; %prints inline, simple help text
%doc funcName; %opens up a nice help window with graphics *better :)
%clear; %clears the variables
%clc; %clears the command window
%who; %prints all variable names you own
%whos; %prints all the variables that you have + more detail
%ans; %the last declared variable or result of calculation
%ctrl-enter = shortcut (quick way to run editor code)

%hidden matlab stuff
%why
%toilet
%life


%PLOT FORMATTING (the stuff after the x, y)
% order: line style, marker symbol, color

% Line Styles:
% - solid
% -- dashed
% : dotted
% -. dash-dot 

% Markers:
% +, o, *, . , x, s, d, ^, v, >, <, 

% Colors:
% r – red
% g – green
% b – blue
% c – cyan
% m – magenta
% y – yellow
% k – black
% w – white





