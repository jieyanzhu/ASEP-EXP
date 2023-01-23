% First method
% Binarize the image with `createMask`
% generated from `color threshold` app

% Second method
% Convert the image to grayscale
% and use Otsu's method for binarization
% We use the first method here
for i=1:15
    if i < 10
        filename = './2023-01-17/pict_00' + string(i);
    elseif i < 100
        filename = './2023-01-17/pict_0' + string(i);
    else
        filename = './2023-01-17/pict_' + string(i);
    end
    image = imread(filename+'.png');
    [bw, masked_image] = createMask(image);
    imwrite(bw, filename+'_bw'+'.png');
end