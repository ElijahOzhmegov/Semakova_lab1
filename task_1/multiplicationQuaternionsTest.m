% ======================================================================
%                   multiplicationQuaternionsTest
% 
% Made by ElijahOzmegov@gmail.com as a part of laboratory work
% 
% That script was created to check multiplicationQuaternions function with 
% random unit quaternion.
% ======================================================================

leftVector = rand(1,4);
leftVector = leftVector/norm(leftVector);
fprintf('The left one:  %f %f %f %f\n', leftVector);
leftVector = {leftVector(1), leftVector(2:4)};

rightVector = rand(1,4);
rightVector = rightVector/norm(rightVector);
fprintf('The right one: %f %f %f %f\n\n', rightVector);
rightVector = {rightVector(1), rightVector(2:4)};


result = multiplicationQuaternions(leftVector, rightVector);
fprintf('The result: %f %f %f %f\n', result{1}, result{2});
fprintf('Another one check: %f\n', sum([result{1} result{2}].^2));