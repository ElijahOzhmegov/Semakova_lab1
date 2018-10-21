function result = multiplicationQuaternions(left, right)
% ======================================================================
% Made by ElijahOzmegov@gmail.com as a part of laboratory work
% 
% To use provided function need to be awared about Quaternions.
% First of all, arguments <left> and <right> are divided into scalar and
% vector parts. So to calculate result you should use the following
% structure: 
%               left  = {scalar, vector}
%               right = {scalar, vector},
% where scalar is just a number, while vector is a one-row matrix. For 
% instance, left = {10, [20 30 40]}.
% ======================================================================

left_scalar = left{1};
left_vector = left{2}.';

right_scalar = right{1};
right_vector = right{2}.';

result_scalar = left_scalar * right_scalar - left_vector.' * right_vector;
result_vector = left_scalar * right_vector + right_scalar * left_vector + ...
                cross(left_vector, right_vector);

result = {result_scalar, result_vector.'};