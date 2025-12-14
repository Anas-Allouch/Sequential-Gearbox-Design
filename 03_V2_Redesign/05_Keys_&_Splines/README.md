## Key Safety Factor Checks
When dealing with keys, there are 2 types of failures: failure by shear, and failure by crushing.  
Since im using custom made keys, and not using the same key everywhere, safety factor check is required at every key location.  
In the following, i will show the formulas used to calculate these safety factors:  

### 1. Shear Failure Check

The transmitted torque T produces a tangential force on the key:

Ft = 2 * T / d

The average shear stress in the key is:

τ = Ft / (b * l)  

with b: key width;  
     l: key length

The shear safety factor is:

n_shear = τ_allow / τ  

τ_allow = 0.3 * S_y  

where the allowable shear stress is taken from the key material yield strength.

---

### 2. Crushing Failure Check

The same tangential force produces a bearing pressure between the key and the hub.

The average crushing stress is:

σ_c = Ft / (h * l)  

with h: contact height between key and shaft, or key and hub ( both must be checked )  

The crushing safety factor is:

n_crushing = σ_c,allow / σ_c  

σ_c,allow = 0.6 * S_y

where the allowable crushing stress is based on the yield strength of the key material.

---

