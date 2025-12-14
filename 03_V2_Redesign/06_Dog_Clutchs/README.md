## Dog Clutch Failure Checks

Dog clutches are checked against crushing failure of the dog faces and shear failure of the dogs.
Torque transmission is assumed to occur through face contact between engaged dogs.

---

### 1. Tangential Force at Dog Radius

The transmitted torque T produces a tangential force at the mean dog radius:

Ft = T / r_m

where r_m is the mean radius of the dog engagement.

---

### 2. Crushing Failure of Dog Faces

The average bearing (crushing) stress on the engaged dog faces is:

σ_c = Ft / (N_e * A_d)

where:
- A_d is contact area of one dog  
- N_e is the effective number of dogs carrying load

The crushing safety factor is:

n_crushing = σ_c,allow / σ_c

where:
 - σ_c,allow = 0.6 * S_y  

---

### 3. Shear Failure of Dogs

Each dog is also checked in shear at its root section.

The average shear stress in one dog is:

τ = Ft / (N_e * A_s)

where:
- A_s is the shear area of one dog (root cross-section)

The shear safety factor is:

n_shear = τ_allow / τ

where:
 - τ_allow = 0.3 * S_y  

---

### Assumptions

- Load is shared by a limited number of dogs due to manufacturing tolerances  
- Contact pressure is uniformly distributed over the engaged dog faces  
- Dynamic and impact effects during engagement are neglected  
- Dogs are fully engaged during torque transmission  
- Material yield governs failure (fatigue not considered here)

---

### Notes

- Dog clutches are primarily torque-locking elements, not synchronizing devices  
- Impact loads during shifting can govern design in high-speed applications  
- Face width and dog count strongly influence durability and engagement quality

