function [ F ] = Fxy( x, y )
%FXY Summary of this function goes here
%   Detailed explanation goes here
    F = exp( -((x-0.3).^2 + y.^2)/0.1 );
end

