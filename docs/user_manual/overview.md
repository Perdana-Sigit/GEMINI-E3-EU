# Model Manual

## Model Calibration

The substitution elasticities used in the nested CES supply and demand functions are derived from a comprehensive review of the relevant literature. All other model parameters are calibrated to ensure the model exactly replicates the economic conditions of the reference year, 2017.

## Economic Rationale & Model Solution

For each sector and region, the model determines total demand as the sum of final demand components, namely investment, household consumption, and exports, and intermediate inputs from all other sectors. This total demand is then allocated between domestically produced and imported goods based on the Armington assumption, which treats imports and domestic goods as imperfect substitutes.

Domestic production processes are represented by nested Constant Elasticity of Substitution (CES) functions, with nesting structures varying by sector. For instance, the production structure of the “other goods and services” sector is organized into four primary input aggregates: capital, labor, materials, and energy. At a lower nesting level, the material and energy aggregates are further disaggregated into individual inputs using additional CES functions.

## Software Required

**GAMS (General Algebraic Modeling System)** is a high-level programming environment designed for modeling and solving complex mathematical optimization problems, particularly in economic modeling, energy systems, and general equilibrium analysis. It provides a flexible and efficient framework for formulating large-scale models with algebraic expressions and solving them using integrated solvers. GEMINI-E3 EU, the European version of the GEMINI-E3 model, is implemented in GAMS, leveraging its powerful capabilities to represent detailed economic structures, policy instruments, and environmental interactions. The use of GAMS facilitates transparency, scalability, and reproducibility in the model’s development and application.

## General Set Up for Simulations

Simulations in GEMINI-E3-EU follow a standard Computable General Equilibrium (CGE) modelling framework. The model is first calibrated to a base year using a Social Accounting Matrix (SAM) derived from databases such as GTAP, together with supplementary environmental datasets including EDGAR and GAINS.

Model parameters are calibrated to reproduce the observed economic equilibrium of the reference year. Policy shocks or external changes—such as carbon pricing, trade policies, or energy transition measures—are then introduced. The model subsequently solves for a new equilibrium by recalculating prices, production, incomes, trade flows, and emissions while ensuring market-clearing conditions.

Simulation results are compared with the baseline to assess impacts on macroeconomic, sectoral, distributional, and environmental indicators. Sensitivity analyses can also be conducted to evaluate the robustness of results under alternative assumptions and parameter values. Overall, the simulation structure of GEMINI-E3-EU follows the general framework commonly applied in CGE modelling.
