# GEMINI-E3-EU
**GEMINI-E3-EU Version**

The GEMINI-E3 model is a multi-country, multi-sector, recursive computable general equilibrium (CGE) model designed to simulate domestic and international markets under the assumption of perfect competition. This implies that prices in commodity markets adjust flexibly through relative prices, wages determine labor market equilibrium, and interest and exchange rates balance domestic and international savings. The model establishes intertemporal linkages through endogenous real interest rates, which are determined by the equilibrium between savings and investment. Furthermore, national and regional economies are interconnected via real exchange rates, which are endogenously determined based on constraints related to trade deficits or surpluses. However, a key exception to the assumption of perfect competition applies to foreign trade. Goods within the same sector but produced by different countries are not treated as perfect substitutes; rather, they are considered distinct economic products, with substitutability governed by the elasticity of substitution, in accordance with the Armington assumption.
The primary outputs of the GEMINI-E3 model, generated on an annual and country-specific basis, include carbon tax levels, marginal abatement costs, and tradable permit prices (when applicable). Additionally, the model provides insights into effective CO₂ emission reductions, net sales of tradable permits (if relevant), total net welfare losses and their components—such as trade-related losses, deadweight losses from taxation, and net permit purchases. Moreover, it produces macroeconomic indicators such as production, imports, and final demand, as well as real exchange and interest rates. At the industrial level, the model captures changes in production, utilization, and price variations.

![Overview](Images/Overview.png)

**Model Structure**

The model features explicit representations of production technologies using nested Constant Elasticity of Substitution (CES) functions, incorporating substitution possibilities between capital, labor, energy, and materials. Final demand is modeled at the household level using nested CES utility functions, while international trade is represented via the Armington assumption to differentiate domestic and imported goods. Government and investment behaviors are explicitly modeled, and environmental modules include emissions accounting and permit trading schemes such as the EU ETS. Calibration relies on Social Accounting Matrices (SAMs) and energy balance data, typically benchmarked to a base year, allowing for consistent policy simulations over time.

![CESProd](Images/CESProd.png)

![CESCons](Images/CESCons.jpg)

**Upgraded EU Version**

The EU-specific version of GEMINI-E3 disaggregates the European Union into multiple regions, significantly increasing the granularity of climate policy analysis at both the national and EU levels. This enhancement improves empirical consistency and predictive accuracy in comparison with other Integrated Assessment Models (IAMs). Furthermore, this version incorporates additional features, including a detailed representation of labor markets, differentiation of household types, the introduction of air pollutants, and new emission reduction technologies such as biofuels, heat pumps, and hydrogen-based solutions.

![Updates](Images/Updates.png)

**Module**

The GEMINI-E3 model is structured into a set of interconnected modules that reflect the complex interplay between macroeconomic dynamics, energy systems, environmental impacts, trade, and policy instruments. The Macroeconomic Module governs the core economic indicators such as GDP, investment, and consumption, acting as the engine that drives sectoral and regional interactions. The Energy Module provides a detailed representation of fossil fuels, renewables, and electricity generation, linking energy demand and supply to macroeconomic activity. The Environment Module quantifies greenhouse gas (GHG) emissions and other pollutants, integrating environmental feedback through carbon taxation and abatement responses, and providing a direct interface with climate policy instruments.
At the international level, the Global Module manages bilateral trade flows by applying the Armington assumption to model substitutability between domestic and imported goods. This module incorporates trade policies, tariffs, and transportation costs, enabling the model to simulate the global economic consequences of regional policy actions. 

The Labor Market Module introduces labor dynamics, determining employment and wage levels in response to economic shocks and structural changes. Fiscal instruments are captured in the Taxation and Subsidies Module, which includes mechanisms such as carbon taxes and fuel subsidies that directly influence both producer and consumer behavior in relation to energy use and emissions.
The long-run evolution of the economy is governed by Dynamic Recursive Updates, which incorporate capital accumulation, population growth, and technological progress, ensuring temporal consistency in projections. The Technology Diffusion Module models innovation processes and learning curves, allowing the simulation of endogenous efficiency improvements and adoption of low-carbon technologies over time. These components are tightly linked, ensuring that feedback across energy markets, environmental constraints, labor dynamics, and technological change are consistently integrated in evaluating policy outcomes.
 
![Modules](Images/Modules.png)
