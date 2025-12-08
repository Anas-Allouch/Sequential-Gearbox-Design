## 1. so first of all, we need to pose our gear ratios and check their conformity with desired car speed and torque at wheel. Another condition to check, is the center distance which all
should respect.

For this step, and after multiple checks and iterations, i got these gears setup:

| gear    | module | number of teeth - input gear | number of teeth - output gear |  ratio   | center distance [Nm] |
|---------|--------|------------------------------|-------------------------------|----------|----------------------|
| gear 1  | 3      |             25               |               63              |   2.5    |    132               |
| gear 2  | 3      |             31               |               57              |  1.8387  |    132               |
| gear 3  | 3      |             37               |               51              |  1.378   |    132               |
| gear 4  | 3      |             41               |               47              |  1.1463  |    132               |
| gear 5  | 3      |             49               |               39              |  0.7959  |    132               |
| reverse | 2.5    |             33               |               73              |  2.2121  |    132               |
| idler   | 2.5    |             19               |               -              |    -     |     -                |

Note: to meet the center distance requirement for the reverse gear, a special layout is made, this special layout is shown in "Reverse_gear_layout".
the idea of this layout is to not have the input, output and idler gears all aligned.

---

## 2. Now that we have the number of teeth and the ratios of each gear, we can calculate the max speed of the car and the torque produced at wheel when each gear is engaged.
For this step, i assumed the final gear ratio, the differential ratio, is at 4.8 and i call it i_final in next calculations which is considered normal for the purpose of this gearbox.
And the tire we are using is 225/40 R18, so after calculations, the total tire diameter D = 637.2 mm = 0.6372 m; which will result in a tire circumference C_tire = 2 m

n_wheel = n_engine/(i_gear * i_final);
v = n_wheel * C_tire * 60/1000;
T_wheel = T_in * i_gear * i_final * eff;

> T_wheel: torque at wheel in [Nm]
> T_in: torque from engine, which is constant at 450 Nm
> i_gear: ratio of the engaged gear at the moment
> i_final: differential ratio, which is assumed as 4.8
> eff: differential efficiency, which is basically the torque transmission efficiency of the bevel gearset inside the differential, assumed as 0.9
> n_wheel: wheel's rpm at a given engine rpm
> n_engine: the engine's rpm at a given moment, since we are looking for max speed, it is going to be the engine's rev limit, i will assume that engine red line is at 6500 rpm
> C_tire: car tire's circumference

After numerical application, it got the following results:

|  gear  |   speed [m/s]   |   torque at wheel [Nm] |
|--------|-----------------|------------------------|
| gear 1 |     64.5429     |        4898.88         |
| gear 2 |     88.4582     |        3574.4328       |
| gear 3 |     118.032     |        2678.832        |
| gear 4 |     141.8896    |        2228.4072       |
| gear 5 |     204.3575    |        1547.2296       |

These values are acceptable for the purpose of the gearbox that is being made.
The goal is not to get that top end speed, but rather focus on that mid range speed, torque and acceleration.

