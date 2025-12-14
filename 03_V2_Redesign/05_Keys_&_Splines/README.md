## Failure at Keys
When dealing with keys, there are 2 types of failures: failure by shear, and failure by crushing.  
Since im using custom made keys, and not using the same key everywhere, safety factor check is required at every key location.  
In the following, i will show the formulas used to calculate these safety factors:  

## Key Safety Factor Checks

### 1. Shear Failure of Key

**Transmitted torque**
\[
T = F_t \, r
\]

**Tangential force on key**
\[
F_t = \frac{2T}{d}
\]

**Shear stress in key**
\[
\tau = \frac{F_t}{b \, l}
\]

**Allowable shear stress**
\[
\tau_{\text{allow}} = \frac{\sigma_y}{n_s}
\quad \text{or} \quad
\tau_{\text{allow}} \approx 0.577\,\sigma_y \ (\text{von Mises})
\]

**Safety factor in shear**
\[
n_{\text{shear}} = \frac{\tau_{\text{allow}}}{\tau}
\]

---

### 2. Crushing (Bearing) Failure of Key

**Bearing (crushing) stress**
\[
\sigma_c = \frac{F_t}{\left(\frac{h}{2}\right) l}
\]

**Allowable crushing stress**
\[
\sigma_{c,\text{allow}} = \frac{\sigma_y}{n_c}
\]

**Safety factor in crushing**
\[
n_{\text{crushing}} = \frac{\sigma_{c,\text{allow}}}{\sigma_c}
\]

---

### 3. Governing Safety Factor

\[
n_{\text{key}} = \min \left( n_{\text{shear}},\; n_{\text{crushing}} \right)
\]

---

### Notation
- \(T\): transmitted torque  
- \(d\): shaft diameter  
- \(b\): key width  
- \(h\): key height  
- \(l\): effective key length  
- \(\sigma_y\): yield strength of key material  
- \(F_t\): tangential force  
- \(n_s, n_c\): design safety factors

