% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 1324.158308337459600 ; 1320.173408113900500 ];

%-- Principal point:
cc = [ 306.602674529573620 ; 255.454055327961530 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.558829227749554 ; 3.832136915612240 ; 0.002070015582569 ; 0.005271973129431 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 12.738749133837487 ; 12.940845760361746 ];

%-- Principal point uncertainty:
cc_error = [ 23.473770622181892 ; 16.995685704543732 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.113317730545256 ; 1.916348914195337 ; 0.002474996682036 ; 0.005022438167753 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 21;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.143705e+00 ; -2.218025e+00 ; 6.088653e-02 ];
Tc_1  = [ 1.967596e+01 ; -1.109192e+02 ; 9.748691e+02 ];
omc_error_1 = [ 2.135618e-02 ; 2.344654e-02 ; 4.920437e-02 ];
Tc_error_1  = [ 1.731293e+01 ; 1.259121e+01 ; 1.024797e+01 ];

%-- Image #2:
omc_2 = [ -2.005417e+00 ; -2.076529e+00 ; 4.472004e-01 ];
Tc_2  = [ 1.629948e+01 ; -1.176276e+02 ; 1.004898e+03 ];
omc_error_2 = [ 1.610114e-02 ; 1.429226e-02 ; 2.669685e-02 ];
Tc_error_2  = [ 1.786898e+01 ; 1.295682e+01 ; 9.473233e+00 ];

%-- Image #3:
omc_3 = [ -1.806958e+00 ; -1.782519e+00 ; 8.029887e-01 ];
Tc_3  = [ 1.582447e+01 ; -1.266241e+02 ; 1.028587e+03 ];
omc_error_3 = [ 1.586001e-02 ; 1.169251e-02 ; 2.018483e-02 ];
Tc_error_3  = [ 1.831006e+01 ; 1.326417e+01 ; 9.511491e+00 ];

%-- Image #4:
omc_4 = [ -1.613254e+00 ; -1.580029e+00 ; 9.878172e-01 ];
Tc_4  = [ 2.061044e+01 ; -1.244555e+02 ; 1.050652e+03 ];
omc_error_4 = [ 1.619458e-02 ; 1.230765e-02 ; 1.753025e-02 ];
Tc_error_4  = [ 1.869433e+01 ; 1.355157e+01 ; 9.651908e+00 ];

%-- Image #5:
omc_5 = [ 2.096192e+00 ; 1.983492e+00 ; 2.431499e-01 ];
Tc_5  = [ 1.150901e+00 ; -1.368043e+02 ; 9.015933e+02 ];
omc_error_5 = [ 1.395700e-02 ; 1.226633e-02 ; 2.535129e-02 ];
Tc_error_5  = [ 1.608130e+01 ; 1.162803e+01 ; 9.265058e+00 ];

%-- Image #6:
omc_6 = [ 1.851096e+00 ; 1.753587e+00 ; 6.028190e-01 ];
Tc_6  = [ 4.433995e+01 ; -1.447175e+02 ; 8.754334e+02 ];
omc_error_6 = [ 1.436443e-02 ; 1.220724e-02 ; 1.948257e-02 ];
Tc_error_6  = [ 1.564016e+01 ; 1.130715e+01 ; 9.179070e+00 ];

%-- Image #7:
omc_7 = [ 1.798558e+00 ; 1.702503e+00 ; 7.750169e-01 ];
Tc_7  = [ 5.218462e+01 ; -1.395845e+02 ; 8.584280e+02 ];
omc_error_7 = [ 1.514211e-02 ; 1.219941e-02 ; 1.867253e-02 ];
Tc_error_7  = [ 1.532928e+01 ; 1.109274e+01 ; 9.139620e+00 ];

%-- Image #8:
omc_8 = [ 1.696480e+00 ; 2.022654e+00 ; 1.365208e+00 ];
Tc_8  = [ 7.416136e+01 ; -1.007619e+02 ; 8.237336e+02 ];
omc_error_8 = [ 1.902801e-02 ; 1.141975e-02 ; 1.916003e-02 ];
Tc_error_8  = [ 1.465331e+01 ; 1.066935e+01 ; 9.052128e+00 ];

%-- Image #9:
omc_9 = [ -1.931940e+00 ; -2.123239e+00 ; -1.160449e+00 ];
Tc_9  = [ 5.528136e+01 ; -9.965357e+01 ; 8.234597e+02 ];
omc_error_9 = [ 6.172700e-03 ; 1.613017e-02 ; 2.458512e-02 ];
Tc_error_9  = [ 1.465849e+01 ; 1.066554e+01 ; 8.912058e+00 ];

%-- Image #10:
omc_10 = [ -1.915405e+00 ; -1.923734e+00 ; -8.182644e-01 ];
Tc_10  = [ 2.971100e+01 ; -9.763526e+01 ; 8.248120e+02 ];
omc_error_10 = [ 7.547109e-03 ; 1.478122e-02 ; 2.301353e-02 ];
Tc_error_10  = [ 1.469317e+01 ; 1.068701e+01 ; 8.704240e+00 ];

%-- Image #11:
omc_11 = [ -1.799531e+00 ; -1.666337e+00 ; -4.723756e-01 ];
Tc_11  = [ 3.463326e+00 ; -8.490048e+01 ; 8.301676e+02 ];
omc_error_11 = [ 9.193422e-03 ; 1.405697e-02 ; 2.078296e-02 ];
Tc_error_11  = [ 1.477458e+01 ; 1.072851e+01 ; 8.469129e+00 ];

%-- Image #12:
omc_12 = [ -1.634189e+00 ; -1.407049e+00 ; -1.273974e-01 ];
Tc_12  = [ -1.118170e+01 ; -8.303798e+01 ; 8.446069e+02 ];
omc_error_12 = [ 1.071826e-02 ; 1.406199e-02 ; 1.799887e-02 ];
Tc_error_12  = [ 1.501912e+01 ; 1.088980e+01 ; 8.317248e+00 ];

%-- Image #13:
omc_13 = [ -1.517151e+00 ; -1.330943e+00 ; -2.053072e-02 ];
Tc_13  = [ -5.712254e+00 ; -8.184138e+01 ; 8.285981e+02 ];
omc_error_13 = [ 1.112225e-02 ; 1.451034e-02 ; 1.668477e-02 ];
Tc_error_13  = [ 1.472982e+01 ; 1.067515e+01 ; 8.077083e+00 ];

%-- Image #14:
omc_14 = [ -1.454703e+00 ; -1.234943e+00 ; 1.343773e-01 ];
Tc_14  = [ -1.226788e+01 ; -8.996130e+01 ; 8.249685e+02 ];
omc_error_14 = [ 1.177793e-02 ; 1.453068e-02 ; 1.566981e-02 ];
Tc_error_14  = [ 1.466727e+01 ; 1.063007e+01 ; 7.917184e+00 ];

%-- Image #15:
omc_15 = [ 1.739158e+00 ; 1.902711e+00 ; -1.692054e+00 ];
Tc_15  = [ 1.754894e+00 ; -7.151770e+01 ; 9.659905e+02 ];
omc_error_15 = [ 1.062542e-02 ; 1.730649e-02 ; 2.319106e-02 ];
Tc_error_15  = [ 1.717048e+01 ; 1.248727e+01 ; 8.183771e+00 ];

%-- Image #16:
omc_16 = [ 1.840231e+00 ; 1.956005e+00 ; -1.132658e+00 ];
Tc_16  = [ -3.403165e+01 ; -9.329699e+01 ; 9.144451e+02 ];
omc_error_16 = [ 8.374778e-03 ; 1.609980e-02 ; 2.322629e-02 ];
Tc_error_16  = [ 1.627568e+01 ; 1.183640e+01 ; 7.881881e+00 ];

%-- Image #17:
omc_17 = [ 1.917591e+00 ; 1.831463e+00 ; -6.218381e-01 ];
Tc_17  = [ -6.534995e+01 ; -9.931199e+01 ; 8.616305e+02 ];
omc_error_17 = [ 9.552833e-03 ; 1.478635e-02 ; 2.237186e-02 ];
Tc_error_17  = [ 1.533318e+01 ; 1.115564e+01 ; 7.769307e+00 ];

%-- Image #18:
omc_18 = [ 1.859126e+00 ; 1.559181e+00 ; -1.506737e-01 ];
Tc_18  = [ -7.305753e+01 ; -9.950662e+01 ; 7.955449e+02 ];
omc_error_18 = [ 1.128663e-02 ; 1.339374e-02 ; 1.971227e-02 ];
Tc_error_18  = [ 1.416433e+01 ; 1.028160e+01 ; 7.587929e+00 ];

%-- Image #19:
omc_19 = [ 1.739281e+00 ; 1.395389e+00 ; 1.607535e-01 ];
Tc_19  = [ -4.645011e+01 ; -1.082478e+02 ; 7.534005e+02 ];
omc_error_19 = [ 1.243908e-02 ; 1.335715e-02 ; 1.772155e-02 ];
Tc_error_19  = [ 1.342706e+01 ; 9.721953e+00 ; 7.412536e+00 ];

%-- Image #20:
omc_20 = [ NaN ; NaN ; NaN ];
Tc_20  = [ NaN ; NaN ; NaN ];
omc_error_20 = [ NaN ; NaN ; NaN ];
Tc_error_20  = [ NaN ; NaN ; NaN ];

%-- Image #21:
omc_21 = [ -2.159180e+00 ; -2.277438e+00 ; -5.347812e-02 ];
Tc_21  = [ 1.928645e+01 ; -1.098478e+02 ; 9.496627e+02 ];
omc_error_21 = [ 1.681744e-02 ; 1.973035e-02 ; 4.077212e-02 ];
Tc_error_21  = [ 1.687846e+01 ; 1.226410e+01 ; 9.972896e+00 ];

