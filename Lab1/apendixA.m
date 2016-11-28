i_max=2e6; % The number of evaluation points.

%%%%%%%% naive method %%%%%%%%

display ('Naive method:')

tic; % Start the timer for the naive method.

% Call the function that applies the naive method

for i=1:i_max

naive_polynomial_calc(i/i_max);

end

toc; % Stop the timer and print the elapsed time.

%%%%%%%% Horner's method %%%%%%%%
display ('horners method:')

tic; % Start the timer for the Horner's method.

% Call the function that applies the Horner's method
for i=1:i_max
horner_polynomial_calc(i/i_max);
end
toc; % Stop the timer and print the elapsed time.