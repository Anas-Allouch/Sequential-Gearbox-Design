# Engine and Input Torque Assumptions

## Intended Application

The gearbox is not designed for a specific competition homologated rally car,
but for a **rally-style/off-road oriented car** built with high torque and
good drivability in mind. The goal is to size a sequential gearbox capable of
handling realistic loads for a powerful off-road/rally-style vehicle, without
being tied to an exact commercial engine model.

## Engine Performance Assumptions

For the purposes of gearbox design, the engine is assumed to deliver:

- **Peak torque:** ≈ 450 Nm  
- **Peak power:** ≈ 350 hp  

These values are representative of a highly tuned turbocharged engine
(4- or 6-cylinder) where:
- Maximum torque (~450 Nm) occurs at mid-range rpm, and  
- Maximum power (~350 hp) is reached at higher rpm.

Only the **torque** is directly used for gearbox sizing. Power is mainly
indicative, to ensure the chosen torque level is consistent with a realistic
engine configuration.

## Use in the Design

In this first design:
- The **450 Nm** torque level is taken as the reference **maximum engine
  torque at gearbox input** (before gear ratios).
- Safety factors, overload factors, and dynamic effects are handled in the
  subsequent gear, shaft, and bearing calculations, based on this input
  torque level.

A more detailed engine torque curve (torque vs rpm) may be introduced in a
later refinement stage if needed, but for now the design is based on this
single worst-case torque value.

