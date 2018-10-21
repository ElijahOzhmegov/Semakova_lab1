function R = R_matrix(u, theta)

q_r = cos(theta/2);
q_i = u(1)*sin(theta/2);
q_j = u(2)*sin(theta/2);
q_k = u(3)*sin(theta/2);

R = [1 - 2*(q_j^2 + q_k^2) 2*(q_i*q_j - q_k*q_r) 2*(q_i*q_k + q_j*q_r);
     2*(q_i*q_j + q_k*q_r) 1 - 2*(q_i^2 + q_k^2) 2*(q_j*q_k - q_i*q_r);
     2*(q_i*q_k - q_j*q_r) 2*(q_j*q_k + q_i*q_r) 1 - 2*(q_i^2 + q_j^2)];
