%chk=CJS1_emim-cl_F_init.chk
# hf/3-21g geom=connectivity

Emim+ (optimised with b3lyp+gd3bj / aug-cc-pvtz) and Cl- in the front
position

0 1
 C                 -0.30065542    1.69689106   -0.10045114
 C                 -1.64070442    1.62111406    0.12704586
 C                 -0.87802342   -0.43263894   -0.15241114
 N                  0.15639858    0.40433106   -0.27537214
 H                  0.35526858    2.54835006   -0.15666214
 H                 -2.37064342    2.39249906    0.30321086
 H                 -0.83092942   -1.50520294   -0.23833514
 N                 -1.98245242    0.28179206    0.09121886
 C                  1.56597158    0.01047806   -0.50468314
 C                  2.41055458    0.16152506    0.75425486
 H                  1.93885258    0.63068106   -1.32072614
 H                  1.54873158   -1.02157594   -0.85541414
 H                  3.43518758   -0.14469494    0.53668486
 H                  2.43625858    1.19733706    1.09794486
 H                  2.03038258   -0.46595594    1.56268186
 C                 -3.33531142   -0.26032294    0.27921386
 H                 -3.70477642    0.02426206    1.26352586
 H                 -3.99301042    0.13061406   -0.49610314
 H                 -3.29381442   -1.34495194    0.20700486
 Cl                -0.78675101   -3.28418134   -0.14641840

 1 2 2.0 4 1.0 5 1.0
 2 6 1.0 8 1.0
 3 4 1.5 7 1.0 8 1.5
 4 9 1.0
 5
 6
 7
 8 16 1.0
 9 10 1.0 11 1.0 12 1.0
 10 13 1.0 14 1.0 15 1.0
 11
 12
 13
 14
 15
 16 17 1.0 18 1.0 19 1.0
 17
 18
 19
 20

