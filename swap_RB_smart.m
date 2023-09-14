function [BGR] = swap_RB_smart(I)
    BGR = I(:, :, [3, 2, 1]);
end