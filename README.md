# PhD Thesis

Six years of part-time pain and suffering in LaTeX form. Awarded July 2018.

The generated thesis is [available as a PDF](https://lukeshope.github.io/doctoral-thesis/SmithLS_PhD_Thesis.pdf). The code for the software produced is [in the HiPIMS repository](https://github.com/lukeshope/hipims-ocl).

## Table of contents
```
1     Introduction                                                                     1
1.1   Background . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1
1.2   Aim and objectives . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4
1.3   Thesis outline . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4

2     Literature review                                                                7
2.1   Flood simulation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 7
2.2   Physically-based modelling of shallow flows  . . . . . . . . . . . . . . . . . . 9
2.3   HPC- and GPU-based flow modelling  . . . . . . . . . . . . . . . . . . . . . . . 12
2.4   High-resolution modelling in practice  . . . . . . . . . . . . . . . . . . . . . 13
2.5   Conclusion . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14

3     First- and second-order shallow flow modelling for flood simulation on 
      heterogeneous computing devices                                                  17
3.1   Numerical methods for shallow flows  . . . . . . . . . . . . . . . . . . . . . . 17
3.1.1 Shallow water equations  . . . . . . . . . . . . . . . . . . . . . . . . . . . . 17
3.1.2 HLLC solution to the Riemann problem . . . . . . . . . . . . . . . . . . . . . . 20
3.1.3 Boundary conditions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21
3.1.4 Stability criterion  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21
3.1.5 Source terms for energy loss and topographic slope . . . . . . . . . . . . . . . 22
3.2   Extension to second-order solution . . . . . . . . . . . . . . . . . . . . . . . 22
3.3   Solution using heterogeneous architectures . . . . . . . . . . . . . . . . . . . 24
3.3.1 Control flow and software structure  . . . . . . . . . . . . . . . . . . . . . . 25
3.3.2 Identification of CFL-constrained timestep . . . . . . . . . . . . . . . . . . . 28
3.3.3 Storage and memory access patterns in a heterogeneous environment  . . . . . . . 29
3.3.4 Decomposition to stencil operations  . . . . . . . . . . . . . . . . . . . . . . 30
3.4   User interface and platform availability . . . . . . . . . . . . . . . . . . . . 34
3.5   Conclusions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 35

4     Validation and performance assessment for single-domain simulations              37
4.1   Ensuring the well-balanced property  . . . . . . . . . . . . . . . . . . . . . . 37
4.2   Moving wet-dry fronts  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 40
4.3   Dam-break simulation over an emerging bed  . . . . . . . . . . . . . . . . . . . 41
4.4   Dam-break against a fixed obstacle . . . . . . . . . . . . . . . . . . . . . . . 42
4.5   Hypothetical pluvial flood event . . . . . . . . . . . . . . . . . . . . . . . . 45
4.6   Real-life dam failure at Malpasset (1959)  . . . . . . . . . . . . . . . . . . . 50
4.7   Computational performance  . . . . . . . . . . . . . . . . . . . . . . . . . . . 51
4.7.1 First-order Godunov-type scheme  . . . . . . . . . . . . . . . . . . . . . . . . 53
4.7.2 Second-order MUSCL-Hancock scheme  . . . . . . . . . . . . . . . . . . . . . . . 54
4.8   Effects of floating-point precision  . . . . . . . . . . . . . . . . . . . . . . 55
4.9   Conclusions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 55

5     Application to fluvial flooding and analysis of the impacts of grid resolution
      and parameterisation                                                             59
5.1   Flooding in Carlisle, January 2005 . . . . . . . . . . . . . . . . . . . . . . . 59
5.1.1 Model generation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 61
5.1.2 Effect of grid resolution and parameterisation . . . . . . . . . . . . . . . . . 62
5.1.3 Computational performance  . . . . . . . . . . . . . . . . . . . . . . . . . . . 67
5.2   Hypothetical flooding in Thamesmead caused by defence failure  . . . . . . . . . 69
5.2.1 Model generation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 69
5.2.2 Effect of grid resolution and parameterisation . . . . . . . . . . . . . . . . . 71
5.2.3 Computational performance  . . . . . . . . . . . . . . . . . . . . . . . . . . . 74
5.3   Conclusion . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 76

6     Domain decomposition and multi-device computation                                79
6.1   Principles of domain decomposition in explicit time-marching schemes . . . . . . 80
6.2   A multi-device multi-nodal implementation with decomposition . . . . . . . . . . 82
6.3   A temporally-decoupled implementation for decomposition  . . . . . . . . . . . . 84
6.4   Software structure . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 87
6.5   Validation and testing of the domain decomposition algorithms  . . . . . . . . . 89
6.5.1 Lake at rest . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 89
6.5.2 Moving wet-dry fronts  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 93
6.6   Performance of forecasted and coupled implementations  . . . . . . . . . . . . . 95
6.7   Conclusions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 95

7     Application of multi-device computation to a detailed city-scale surface-water
      flood simulation                                                                 99
7.1   Flooding in Newcastle during June and August 2012  . . . . . . . . . . . . . . . 99
7.2   Data sources and model generation  . . . . . . . . . . . . . . . . . . . . . . . 100
7.3   Results  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 103
7.3.1 Computational performance  . . . . . . . . . . . . . . . . . . . . . . . . . . . 104
7.3.2 Ability to reproduce large-scale flood features  . . . . . . . . . . . . . . . . 104
7.3.3 Ability to reproduce small-scale flood features, and sensitivity to
      grid resolution  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 107
7.4   Conclusions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110

8     An assessment of the potential presented by soft data sources for pluvial flood
      simulation                                                                       113
8.1   Background . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 114
8.2   Modelling framework  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 115
8.2.1 Social media harvesting and analysis . . . . . . . . . . . . . . . . . . . . . . 116
8.2.2 Real-time modelling  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 117
8.2.3 Flood model result analysis  . . . . . . . . . . . . . . . . . . . . . . . . . . 121
8.3   Results and discussion . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 123
8.3.1 Geolocating Tweets and identifying binary assertions against which
      to assess model performance  . . . . . . . . . . . . . . . . . . . . . . . . . . 123
8.3.2 Correlation of models against criteria from social media and known
      data . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 125
8.4   Conclusions  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 127

9     Conclusions and recommendations                                                  129
9.1   Leveraging advances in computing power for expedited flood simulation  . . . . . 129
9.2   Ability to produce accurate results comparable to existing software  . . . . . . 130
9.3   Limitations of data sources available  . . . . . . . . . . . . . . . . . . . . . 132
9.4   Recommendations for professional practice  . . . . . . . . . . . . . . . . . . . 133
9.5   Potential for real-time high-resolution flood forecasting and nowcasting . . . . 134

References                                                                             136
```
