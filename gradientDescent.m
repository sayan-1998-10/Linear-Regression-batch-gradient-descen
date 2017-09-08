function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

m= length(y);    % number of training examples

% Initialize some useful values
num_iters=1500;
J_history = zeros(num_iters, 1);


for iter = 1:num_iters
    temp1=0;    #theta_0 := theta_0 - alpha*(1/m)*d/d_theta_0(J(theta_0,theta_1))#
    temp2=0;    #theta_1 := theta_1 - alpha*(1/m)*d/d_theta_1(J(theta_0,theta_1))#
    for i = 1 : 1: m
      temp1 +=  [alpha*(1/m)*[((theta')*(X(i,:)'))-y(i)]]*X(i,1);
      temp2 +=   [alpha*(1/m)*[((theta')*(X(i,:)'))-y(i)]]*X(i,2);
    end  
      new_theta_0 = theta(1) - (temp1);
      new_theta_1 = theta(2) - (temp2);
      theta = [new_theta_0;new_theta_1] 
      J_history(iter) = computeCost(X, y, theta)
      
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %




    % ============================================================

    % Save the cost J in every iteration    
    

    end

end
