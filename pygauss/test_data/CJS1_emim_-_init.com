%chk=CJS1_emim_-_init.chk
# opt b3lyp/3-21g geom=connectivity

1-ethyl-3-methylimidazolium

1 1
 C                 -2.15660178   -0.49847880    0.64899007
 C                 -0.87057027   -0.65494796    0.27880184
 C                 -1.24490075    1.55779849    0.21970467
 N                 -2.41493324    0.93310243    0.87451419
 H                 -2.87380820   -1.28527542    0.75606957
 H                 -0.35055767   -1.58498567    0.18124800
 H                 -1.17426368    2.59102649   -0.04927546
 N                 -0.31904166    0.67354257    0.01250612
 C                 -3.70302927    1.38844017    0.33194976
 C                 -4.85014580    0.64216332    1.03820363
 H                 -3.73920958    1.18627529   -0.71815517
 H                 -3.80742014    2.44055839    0.49641796
 H                 -5.78773950    0.97359963    0.64327578
 H                 -4.74575492   -0.40995490    0.87373542
 H                 -4.81396548    0.84432820    2.08830855
 C                  1.05185530    0.95743183   -0.43576657
 H                  1.68272999    1.10296417    0.41612395
 H                  1.41626122    0.13335550   -1.01283374
 H                  1.05443847    1.84261632   -1.03688366

 1 2 2.0 4 1.0 5 1.0
 2 6 1.0 8 1.0
 3 4 1.0 7 1.0 8 2.0
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

