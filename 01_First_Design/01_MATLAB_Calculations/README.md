# MATLAB Calculations (Initial Design Phase)

This directory contains the MATLAB modules used during the first design
iteration of the sequential gearbox project. Each sub-folder corresponds
to a specific analysis task (gear forces, moment diagrams, shaft stresses, etc.).

The scripts and functions here are **not optimized** and **not intended
for production-level code**. Their purpose is only to automate repetitive
engineering calculations and avoid doing them manually in Excel.

## Structure
Each module folder contains:
- A main script (`*_main.m`) that runs the calculation.
- Local helper functions used by that module.
- Path setup at the top of every script to correctly access Excel data
  stored in `02_Excel_Tables`.

## Notes
- All paths to Excel files are handled dynamically using
  `mfilename('fullpath')` to ensure compatibility on any computer or
  GitHub clone.
- No global code organization or optimization has been applied yet.
- A future “clean code” pass will reorganize, optimize, and document the
  final version of the computational tools.

