function [d] = significantDigits(exact, approximation)
%The function "significantDigits" takes two arguments, an exact value and
%an approximation of that value, it returns the number of significant
%digits for that aproximation.
d = floor(-1 * log10((abs(exact - approximation) / abs(exact)) / 5));
end