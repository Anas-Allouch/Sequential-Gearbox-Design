# Bearings – Selection and Life Check

Bearings are selected and verified based on required life, reliability, and operating
loads. Life calculations follow standard rolling bearing theory.

---

## Design Targets

- Bearing life: L10,req = 667 hours  
- Reliability: R = 90 %
- Shaft speed range: 4000 rpm for all gears  
- Bearing type: Cylindrical roller bearings  

---

## Load Definition

Bearing loads depend on the engaged gear and transmitted torque.
Each gear produces a different bearing load.

---

## Time Fraction Method

Bearing life is evaluated using a duty cycle approach.

For each gear i:
- Time fraction: t_i  
- Equivalent bearing load: P_i
- Average Rotation Speed: n_avg,i

A global equivalent load is calculated using:

P_eq = [ Σ (t_i * P_i^p *n_avg,i) / (Σ (t_i * n_avg,i) ]^(1/p)

where: 
- p = 10/3 (cylindrical roller bearings)

---

## Results
After calucaltion, I got:
 - input shaft: C10 = 43.788 KN
 - output shaft: C10 = 38.215 KN
