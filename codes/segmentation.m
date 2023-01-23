image = imread('./2023-01-17/pict_001.png');
imshow(image)

% Draw rectangles on the image and 
% record positions of their centers
centers = zeros(108, 2);
for i=1:108
    roi = drawrectangle;
    centers(i, 1) = roi.Position(1) + 0.5 * roi.Position(3);
    centers(i, 2) = roi.Position(2) + 0.5 * roi.Position(4);
end

% Round and save centers info as csv
centers = round(centers);
centers_T = array2table(centers);
centers_T.Properties.VariableNames(1:2) = {'x', 'y'};
writetable(centers_T, './2023-01-17/sites.csv');
