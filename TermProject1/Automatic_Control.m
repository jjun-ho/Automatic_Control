Jm = 0.05;
b = 0.006;
Ke = 0.05;
Kt = 0.05;
Ra = 10;
La = 0.01;

Jm_high = 0.055;
b_high = 0.0066;
Ke_high = 0.055;
Kt_high = 0.055;
Ra_high = 11.0;
La_high = 0.011;

Jm_low = 0.045;
b_low = 0.0054;
Ke_low = 0.045;
Kt_low = 0.045;
Ra_low = 9.0;
La_low = 0.009;

plant = tf(Kt,[(Jm*La) (b*La+Ra*Jm) (b*Ra+Kt*Ke)]);
controller = tf([1 1.406],[1 28.12]);
sisotool(plant, controller);