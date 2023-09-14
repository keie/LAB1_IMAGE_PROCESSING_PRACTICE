function [PAD] = pad_image(varargin)
    I = varargin{1};
    [height, width, ch] = size(I);
    
    
    if ch > 1
        I = rgb2gray(I);
    end
    
    
    border_size = 10;

    if nargin > 1
        border_size = varargin{2};
    end

    
    PAD = zeros(height + 2 * border_size, width + 2 * border_size, 'like', I);

    
    start_row = border_size + 1;
    end_row = start_row + height - 1;
    start_col = border_size + 1;
    end_col = start_col + width - 1;

    PAD(start_row:end_row, start_col:end_col) = I;
end