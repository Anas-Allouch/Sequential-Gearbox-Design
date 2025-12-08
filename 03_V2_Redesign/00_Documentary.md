## 1. Gears Specs
So first of all, we need to pose our gear ratios and check their conformity with desired car speed and torque at wheel. Another condition to check, is the center distance which all should respect.  

For this step, and after multiple checks and iterations, i got these gears setup:  

| gear    | module | number of teeth - input gear | number of teeth - output gear |  ratio   | center distance [Nm] |
|---------|--------|------------------------------|-------------------------------|----------|----------------------|
| gear 1  | 3      |             25               |               63              |   2.52   |    132               |
| gear 2  | 3      |             31               |               57              |  1.8387  |    132               |
| gear 3  | 3      |             37               |               51              |  1.378   |    132               |
| gear 4  | 3      |             41               |               47              |  1.1463  |    132               |
| gear 5  | 3      |             49               |               39              |  0.7959  |    132               |
| reverse | 2.5    |             33               |               73              |  2.2121  |    132               |
| idler   | 2.5    |             19               |               -               |    -     |     -                |

Note: to meet the center distance requirement for the reverse gear, a special layout is made, this special layout is shown in "Reverse_gear_layout".
the idea of this layout is to not have the input, output and idler gears all aligned.

---

## 2. Speed and Torque at Wheel
Now that we have the number of teeth and the ratios of each gear, we can calculate the max speed of the car and the torque produced at wheel when each gear is engaged.  
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

---

## 3. Bearings Check
Now that we have our gears specs, we can proceed to sketch our shafts.  
So for this step, i made a sketch of the shaft in order to be able to calculate the approximate diameters required and more importantly the bearings that will be installed.  
To get the needed size of bearings, we have to calculate C10.  
In order to be able to calculate C10, we need multiple values.  
desired life in hours;  
reliability;  
time fraction per gear;  
average rotation speed;  

 - For reliability we will go with 0.9 because we are not making an industrial gearbox that will be running for a long time.
 - the desired life of this gearbox is 40000 km, and assuming the average speed of the car is 60 km/h
	we will get a total number life in hours = 40000/60 = 667 hours
 - the average rotation speed of the engine is assumed at 4000 rpm, which is not low, but i will proceed with this number since the gearbox will be installed in a simple family car
 - time fraction per gear, we will assume a balanced mixed use between aggressive off road, rally-ish use and normal cruising. So time fraction per gear can be presented like the following:

| gear   |   time fraction |
|--------|-----------------|
| gear 1 |       0.1       |
| gear 2 |       0.2       |
| gear 3 |       0.2       |
| gear 4 |       0.25      |
| gear 5 |       0.25      |

I will be using cylindrical roller bearings.  
After calculation, we got a required C10 = 43.788 KN  
This C10 is for input shaft, we don't really need to calculate C10 on output shaft since 4 out of 5 gears are rotating at a speed less than that of the input, the rotation speed is divided by the ratio of each gear.  
No need to take reverse gear into consideration since it is rarely used in comparison with all other 5 gears, the time fraction will be at like 0.01 which is negligeable.  
After consulting the catalogues, i chose to use the following bearings:
- NUP 2206 ECP: bore diameter 30 mm - width 20 mm - load rating C = 55 KN  
- NUP 207 ECP: bore diameter 35 mm - width 17 mm - load rating C = 56 KN  
- NUP 208 ECP: bore diameter 40 mm - width 18 mm - load rating C = 62 KN  

And no this over design is not for nothing, it is for the shaft diameter requirement for later shaft fatigue analysis.
