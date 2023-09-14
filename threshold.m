function [TH] = threshold(I, level)
    [height, width, ch] = size(I);
    
    if ch == 1
        TH = I
    else
        warning()
        
        I = rgb2gray(I);
        
        % umbrale to binary image in white and black
        TH = I >= level; % pxel > umbralle white, for others black
        
        % convert image binary to white and black {0, 255}
        TH = uint8(255 * TH);
end