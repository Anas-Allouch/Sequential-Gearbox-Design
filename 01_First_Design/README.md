# First Acceptable Design

This folder contains the first **acceptable and technically coherent**
design of the sequential gearbox project. It was created after multiple 
early design attempts that revealed significant issues, missing
information, or incorrect assumptions. These early failures were essential
for building a solid understanding of the constraints and requirements of
a real multi-speed gearbox.

Throughout the process, I encountered and learned numerous new concepts
related to gearbox engineering that do not appear in simple single-stage
reducers. Topics such as gear load distribution, shaft fatigue under
combined loading, bearing life calculations, and moment/torque diagrams 
were progressively integrated and refined as I
identified mistakes in previous versions.

This directory therefore serves as:
- a **checkpoint** for the first design that no longer contains major
  conceptual errors or unrealistic assumptions, and  
- a **trace of my progress**, documenting how the project evolved from
  failed early designs into a structured, technically valid gearbox
  model.

## Notes on Excel Tables

The Excel files in `02_Excel_Calculations` are **raw engineering 
worksheets**, not formatted reports. They store:
- intermediate values used by MATLAB scripts,
- extracted forces and geometries,
- safety factors calculated using MATLAB,
- and other working data.

Their purpose is to support calculations, not to present final, polished
tables. Clean, validated versions of these data sets will be produced in a
later stage once the full design is refined.

## Notes on CAD Models
SolidWorks part models and technical drawings are **not yet finalized**.
They will be developed once all dimensions, stresses, safety factors, and
design decisions are fully validated. The current `03_Shaft_Drawings`
folder contains only preliminary, non-refined versions of the input and
output shafts. Final CAD models and detailed drawings will be added in a
later design stage.

