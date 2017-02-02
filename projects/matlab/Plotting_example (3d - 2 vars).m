
%what i'm doing here is working with a 3-variable system: 2 independent
%variables (my_values1 and my_values2) and 1 dependent variable (res_grid)

%I ultimately want to show 3-variables on a plot. my 2 independent
%variables will be the 'x' and 'y' of the plot, and my dependent variable
%will be the 'z' (in this case, represented by a color)

%Thus, I cycle through 2 vectors (my_values1 and my_values2) via 2
%for-loops

%then pass those values to a function that will do some sort of calculation
%and return a single value that will then be my 'z' for that particular
%(x,y) point

%Lastly, to plot it, i have to use this thing called 'meshgrid' which takes
%my x and y vectors and turns them into matrices. This is just necessary
%for plotting functions like pcolor to work

%Don't forget to label!!

function ans = plotting_example()

    my_values1 = 1:5:100; %try 1:1:100 for increased accuracy
    my_values2 = 1:50:1000; %try 1:10:100 for increased accuracy

    res_grid = [];

    for i = 1 : length(my_values1)
        for j = 1 : length(my_values2)

            %calls an external function to calculate my 'z' value
            res_grid(i,j) = my_special_function(my_values1(i), my_values2(j));

        end
    end

    %plot it
    [X, Y] = meshgrid(my_values1, my_values2) %necessary for pcolor plotting
    pcolor(X, Y, res_grid); %for cool 3-d effect, try 'surf' instead of pcolor
    c = colorbar; %pops up the color bar on the right


    %labels
    xlabel('X', 'FontSize', 18);
    ylabel('Y', 'FontSize', 18);
    ylabel(c, 'Gradient', 'FontSize', 18);
    zlabel('Z', 'FontSize', 18);
    title('Really Cool Plotting Example', 'FontSize', 22);

end


function res = my_special_function(x, y)
    res = x * y;
end