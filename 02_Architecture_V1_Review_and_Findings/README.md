# Architecture V1 — Review and Findings
This folder documents the **first complete gearbox architecture** of the project, including:
- Input shaft
- Output shaft
- Full set of SolidWorks gearbox parts used in V1
- The complete V1 gearbox assembly
- Initial dog–gear engagement concept
- Notes and explanations of the limitations discovered in this version

During the evaluation of this version, several **critical limitations** were identified.
These limitations led to the upcoming redesign.

### **01_Shafts_Drawings/**
Contains the exported shapes/representations of:
- **Input shaft**
- **Output shaft**

These are not final technical drawings, but the **geometric form and layout** of the shafts as designed in Architecture V1.
They are included here to document the original shaft concepts before the redesign and to allow easy comparison with V2 once all dimensions and calculations are finalized.

### **02_Gearbox_Parts/**
Contains all SolidWorks **individual gearbox components** used in V1:
- Output shaft
- Input shaft
- Gears
- Dog rings
- Keys
- Bearings

This allows reconstruction of the complete V1 assembly for reference.

### **03_Gearbox_Assembly/**
Contains the **Architecture V1 gearbox assembly**.

This assembly was created to:
- Visualize the overall concept  
- Check the positioning of gears, shafts, and dog rings  
- Verify clearances and relative spacing  
- Validate how the parts interact in 3D  
- Identify problems or design conflicts that were not obvious during individual part modeling  

Although this assembly contains limitations that led to the redesign, it is preserved here to document the initial idea and to compare it later with the improved V2 architecture.
In addition to verifying geometry, this assembly was also created to **step away from pure numbers and calculations** and actually build the concept in CAD, helping reveal issues that were not obvious on paper.

### **04_MATLAB/**
Contains the MATLAB work used during the Architecture V1 review.
#### **modified_scripts/**
#### **new_scripts/**

## Summary of V1 Findings

### **Key issues identified:**

1. **Output shaft keyseat depth too large** (7 mm on Ø50 mm shaft)  
   This leads to excessive radius removal → high Kt → fatigue risk

2. **Keyseat placed too close to a shoulder / critical section**  
   This creats a combination of stress concentrations (shoulder + keyseat) that severely weakens the shaft in bending and torsion

3. **Key failure risk on the output shaft**  
   Safety factors were only around **1.0–1.1** in shear and crushing, while the target is **1.5+**
   This makes the keyed dog-hub connection unacceptable on the high-torque output shaft, especially on the first gear

4. **Splines not feasible due to assembly and bearing constraints**  
   Needle bearings and stepped diameters prevent placing splines in the required locations
   Splines cannot be added “anywhere” making a splined dog hub impossible in this current version

5. **Dog ring requires a splined zone to slide axially**  
   For proper engagement into dog pockets, the dog ring must slide along a spline
   The V1 architecture did not provide any feasible spline region for this movement, blocking correct dog operation

## What I Learned
- Critical shaft features must always be checked for **combined stress concentrations**, especially when multiple geometric changes (shoulders, keyseats, grooves) are close together
- Dog hubs require careful balance between key depth, shaft diameter, and torque levels
- Needle bearings strongly restrict where splines can be placed
- Manufacturing feasibility and assembly constraints must always be checked throughout the design
- Initial designs rarely work perfectly — redesign is normal and often unavoidable

## Technical Skills Gained
- Involute gear tooth design
- Spline calculation and spline design
- Real dog-clutch concept understanding (engagement, load transfer, geometry)
- Designing all gearbox parts in SolidWorks (full parts + complete V1 assembly)

## Why I Made This Folder
- To document the first complete gearbox architecture (V1), even though the design ultimately proved unviable  
- To clearly show the full concept assembly and the work completed before identifying its limitations  
- To demonstrate my SolidWorks modeling skills through fully created parts and assemblies  
- To validate the design visually in 3D and step beyond purely analytical calculations  
- To identify problems that are not visible in numerical analysis alone, such as assembly feasibility, mounting constraints, and geometric conflicts  
- To keep a transparent record of the shortcomings discovered in Architecture V1 before transitioning to a corrected and improved design  

## Next Step
- Begin redesigning the output shaft to address the keyseat, stress concentration, and assembly issues identified in V1  
- Rebuild the dog-hub interface with improved geometry and safer torque transmission  
- Ensure that the new design achieves the desired safety factors (≥ 1.5) for all torque-transmitting features  
- Validate whether modifying only the output shaft is sufficient to resolve the limitations  
- If required, extend the redesign to include both the input and output shafts  
- Integrate all lessons learned from V1 regarding splines, keys, dog engagement, manufacturability, and assembly feasibility  
- Develop Architecture V2 as a corrected and more robust version of the gearbox design  
