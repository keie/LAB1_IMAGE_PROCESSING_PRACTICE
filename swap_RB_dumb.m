function [BGR] = swap_RB_dump(I)
   % image size
    [height, width, ~] = size(I);

    % channel colors exhanges
    for row = 1:height
        for col = 1:width
            % save color red temporally
            ch_red_temp = I(row, col, 1);
        
            % blue and red exchange
            I(row, col, 1) = I(row, col, 3); % ch red to blue
            I(row, col, 3) = ch_red_temp; % to red
        end
    end
    BGR = I
end