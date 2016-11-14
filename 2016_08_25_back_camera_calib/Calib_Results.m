% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1005.525554311601800 ; 1004.489053893545000 ];

%-- Principal point:
cc = [ 360.502158002357480 ; 257.422516060729320 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.471116136869826 ; 2.439872088951476 ; 0.004855661906705 ; -0.000503405506124 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 13.339419405561365 ; 13.168807446721351 ];

%-- Principal point uncertainty:
cc_error = [ 24.357683385444229 ; 23.955945707002627 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.146376261377776 ; 2.140795092327583 ; 0.003709710977945 ; 0.008297961651867 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 20;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 9.473258e-02 ; 3.132442e+00 ; 7.343353e-02 ];
Tc_1  = [ -5.472371e+01 ; -1.170580e+02 ; 1.086223e+03 ];
omc_error_1 = [ 4.220203e-03 ; 3.581030e-02 ; 5.264882e-02 ];
Tc_error_1  = [ 2.635486e+01 ; 2.597608e+01 ; 1.549256e+01 ];

%-- Image #2:
omc_2 = [ 8.771154e-02 ; 2.817378e+00 ; 7.562289e-03 ];
Tc_2  = [ -5.203070e+01 ; -1.180274e+02 ; 1.109333e+03 ];
omc_error_2 = [ 4.666414e-03 ; 3.151008e-02 ; 3.525504e-02 ];
Tc_error_2  = [ 2.696540e+01 ; 2.649777e+01 ; 1.457332e+01 ];

%-- Image #3:
omc_3 = [ 9.411929e-02 ; 2.572379e+00 ; -4.403495e-03 ];
Tc_3  = [ -5.441300e+01 ; -1.189471e+02 ; 1.122956e+03 ];
omc_error_3 = [ 7.863094e-03 ; 2.646914e-02 ; 3.067023e-02 ];
Tc_error_3  = [ 2.728950e+01 ; 2.681729e+01 ; 1.458383e+01 ];

%-- Image #4:
omc_4 = [ 9.391317e-02 ; 2.328624e+00 ; -2.017173e-02 ];
Tc_4  = [ -5.830595e+01 ; -1.193676e+02 ; 1.140786e+03 ];
omc_error_4 = [ 1.097059e-02 ; 2.524983e-02 ; 2.779902e-02 ];
Tc_error_4  = [ 2.771219e+01 ; 2.724659e+01 ; 1.467705e+01 ];

%-- Image #5:
omc_5 = [ -8.235274e-02 ; -2.975868e+00 ; -7.503674e-02 ];
Tc_5  = [ -4.520018e+01 ; -1.169956e+02 ; 1.080729e+03 ];
omc_error_5 = [ 5.596799e-03 ; 2.798863e-02 ; 4.233740e-02 ];
Tc_error_5  = [ 2.624112e+01 ; 2.580069e+01 ; 1.523211e+01 ];

%-- Image #6:
omc_6 = [ -5.818077e-02 ; -2.695655e+00 ; -7.161595e-02 ];
Tc_6  = [ -3.051273e+01 ; -1.164351e+02 ; 1.065444e+03 ];
omc_error_6 = [ 8.940408e-03 ; 2.503203e-02 ; 3.463396e-02 ];
Tc_error_6  = [ 2.587976e+01 ; 2.542094e+01 ; 1.505442e+01 ];

%-- Image #7:
omc_7 = [ -5.168795e-02 ; -2.457765e+00 ; -7.409766e-02 ];
Tc_7  = [ -3.290352e+01 ; -1.158942e+02 ; 1.057319e+03 ];
omc_error_7 = [ 1.169062e-02 ; 2.448986e-02 ; 3.053880e-02 ];
Tc_error_7  = [ 2.568207e+01 ; 2.523202e+01 ; 1.506626e+01 ];

%-- Image #8:
omc_8 = [ -4.283348e-02 ; -2.270883e+00 ; -7.601593e-02 ];
Tc_8  = [ -3.786440e+01 ; -1.152435e+02 ; 1.053031e+03 ];
omc_error_8 = [ 1.362438e-02 ; 2.435191e-02 ; 2.778210e-02 ];
Tc_error_8  = [ 2.557564e+01 ; 2.513605e+01 ; 1.510558e+01 ];

%-- Image #9:
omc_9 = [ -3.248430e-01 ; 2.173807e+00 ; 6.849782e-01 ];
Tc_9  = [ 4.005322e+01 ; -1.125680e+02 ; 1.114008e+03 ];
omc_error_9 = [ 1.408813e-02 ; 2.411241e-02 ; 2.753561e-02 ];
Tc_error_9  = [ 2.708828e+01 ; 2.659408e+01 ; 1.474421e+01 ];

%-- Image #10:
omc_10 = [ -1.773704e-01 ; 2.395542e+00 ; 8.533314e-01 ];
Tc_10  = [ 2.222658e+01 ; -1.143756e+02 ; 1.059301e+03 ];
omc_error_10 = [ 1.294104e-02 ; 2.397517e-02 ; 3.001667e-02 ];
Tc_error_10  = [ 2.576574e+01 ; 2.530596e+01 ; 1.447575e+01 ];

%-- Image #11:
omc_11 = [ 6.319441e-02 ; 2.645946e+00 ; 1.003491e+00 ];
Tc_11  = [ -1.148928e+01 ; -1.142193e+02 ; 1.013953e+03 ];
omc_error_11 = [ 1.324135e-02 ; 2.329109e-02 ; 3.298687e-02 ];
Tc_error_11  = [ 2.467375e+01 ; 2.426003e+01 ; 1.434339e+01 ];

%-- Image #12:
omc_12 = [ -4.313821e-01 ; -2.797364e+00 ; -1.177874e+00 ];
Tc_12  = [ -6.142853e+01 ; -1.105619e+02 ; 9.744824e+02 ];
omc_error_12 = [ 1.178933e-02 ; 2.802272e-02 ; 3.311040e-02 ];
Tc_error_12  = [ 2.371526e+01 ; 2.335024e+01 ; 1.452061e+01 ];

%-- Image #13:
omc_13 = [ -5.786149e-01 ; -2.387672e+00 ; -9.920230e-01 ];
Tc_13  = [ -1.250005e+02 ; -1.065376e+02 ; 9.677838e+02 ];
omc_error_13 = [ 1.366194e-02 ; 2.692002e-02 ; 2.880820e-02 ];
Tc_error_13  = [ 2.352207e+01 ; 2.322440e+01 ; 1.495139e+01 ];

%-- Image #14:
omc_14 = [ -5.921895e-01 ; -2.197245e+00 ; -7.604241e-01 ];
Tc_14  = [ -1.524948e+02 ; -1.064280e+02 ; 9.906646e+02 ];
omc_error_14 = [ 1.501909e-02 ; 2.585259e-02 ; 2.666446e-02 ];
Tc_error_14  = [ 2.405378e+01 ; 2.379569e+01 ; 1.522956e+01 ];

%-- Image #15:
omc_15 = [ 2.183271e-01 ; 2.157358e+00 ; -1.179720e+00 ];
Tc_15  = [ -6.949335e+01 ; -1.200171e+02 ; 1.231067e+03 ];
omc_error_15 = [ 1.626090e-02 ; 2.696745e-02 ; 2.729770e-02 ];
Tc_error_15  = [ 2.991484e+01 ; 2.948079e+01 ; 1.526548e+01 ];

%-- Image #16:
omc_16 = [ 3.057906e-01 ; 2.531967e+00 ; -1.176515e+00 ];
Tc_16  = [ -5.184466e+01 ; -1.458639e+02 ; 1.203894e+03 ];
omc_error_16 = [ 1.389104e-02 ; 2.754808e-02 ; 3.239087e-02 ];
Tc_error_16  = [ 2.931833e+01 ; 2.886093e+01 ; 1.514232e+01 ];

%-- Image #17:
omc_17 = [ 1.664939e-01 ; 2.824377e+00 ; -1.388279e+00 ];
Tc_17  = [ -1.443527e+01 ; -1.401815e+02 ; 1.200833e+03 ];
omc_error_17 = [ 1.688977e-02 ; 2.759342e-02 ; 3.613687e-02 ];
Tc_error_17  = [ 2.924098e+01 ; 2.875923e+01 ; 1.517631e+01 ];

%-- Image #18:
omc_18 = [ -7.382731e-02 ; -2.577017e+00 ; 1.046386e+00 ];
Tc_18  = [ -5.804886e+00 ; -1.686815e+02 ; 1.152832e+03 ];
omc_error_18 = [ 1.649709e-02 ; 2.517909e-02 ; 3.282616e-02 ];
Tc_error_18  = [ 2.813907e+01 ; 2.761979e+01 ; 1.511791e+01 ];

%-- Image #19:
omc_19 = [ 6.926136e-03 ; -2.357381e+00 ; 7.972638e-01 ];
Tc_19  = [ -7.259893e+00 ; -1.772928e+02 ; 1.109868e+03 ];
omc_error_19 = [ 1.607886e-02 ; 2.473430e-02 ; 2.949933e-02 ];
Tc_error_19  = [ 2.711913e+01 ; 2.656231e+01 ; 1.508325e+01 ];

%-- Image #20:
omc_20 = [ 1.047324e-01 ; -2.184896e+00 ; 5.547440e-01 ];
Tc_20  = [ -1.929391e+01 ; -1.799681e+02 ; 1.056044e+03 ];
omc_error_20 = [ 1.619545e-02 ; 2.443028e-02 ; 2.687977e-02 ];
Tc_error_20  = [ 2.583449e+01 ; 2.525478e+01 ; 1.486121e+01 ];

