clear; close all;
image = imread('input/AlfredoBorba_TuscanLandscape.jpg');
gray_image = rgb2gray(image);

% Define the desired row (row) with a value of 150
row = 150;

% Create a new figure
figure;

% Top subplot: display the grayscale image and plot the line on the selected row
subplot(2, 1, 1);
imshow(gray_image);
hold on; % Keep the current plot
line([1, size(gray_image, 2)], [row, row], 'Color', 'r', 'LineWidth', 2); % Draw the line in red
title('Grayscale Image with Line at Row 150');
xlabel('Column');
ylabel('Row');

% Bottom subplot: plot pixel intensity levels on the selected row as a function of column index
subplot(2, 1, 2);
plot(gray_image(row, :), 'b', 'LineWidth', 2); % Plot intensity levels in the row
title('Intensity Levels on Row 150');
xlabel('Column');
ylabel('Intensity');

% Adjust margins and spacing between subplots
subplot(2, 1, 1);
axis on;
subplot(2, 1, 2);
axis on;

% Show the figure
hold off; % Release the current plot