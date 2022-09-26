####################################
# Parameters - for Age Pike Model
# Created by: Elias Ehrlich
####################################
############
# Parameters
############
Bodden_area = 125200 #according to Rob van Gemerts' data in handover folder #126560 #170000 # [ha] 

a_max = 15                # Maximum age [years]
#M_min = 0.15              # Minimum adult natural mortality rate [year^-1]
M_min = 0.25              # Minimum adult natural mortality rate [year^-1]
theta = 0.5               # Lorenzen size-dependent mortality power (0-1.2)
#theta = 1.0               # Lorenzen size-dependent mortality power (0-1.2)

alpha_w = 0.0045          # Length-weight scaling constant
beta_w = 3.107            # Allometric parameter

l_mat = 375               # Length-at-maturation [mm]
alpha_f = 9.8             # Fecundity-weight scaling constant
beta_f = 1.12             # Power parameter relating fecundity to weight

R0 = 1.0*10^6             # Average total age-1 recruitment in the unfished stock []
SexRatioRecruits = 0.5    # females/(females+males)
CR = 6.1                  # Compensation ratio (paper: Goodyear 1980) []

#lmin_c = 375              # Minimum length at which vulnverable to capture [mm] 
lmin_c = 400              # Minimum length at which vulnverable to capture [mm] 
lmax_c = 1500             # Maximum length at which vulnerable to capture [mm]
#lmin_r = 375              # Minimum length at which vulnverable to capture [mm] 
lmin_r = 500              # Minimum length vulnerable to harvest [mm]
lmax_r = 1500             # Maximum length vulnerable to harvest [mm]

l_troph = 1000            # Minimum total length of a trophy fish [mm]

#F_mort = 0.1              # Instantaneous fishing mortality on individuals with selectivity of 1 [year^-1] (current situation)
F_mort = 0.2              # Instantaneous fishing mortality on individuals with selectivity of 1 [year^-1] (current situation)
d = 0.078                 # Discard mortality []; e.g. f_h=0.1 --> 10 % of released fish die 

# Growth parameters based on 3 different aging methods using scales, otoliths or the corroborated age, respectively (=3 values for each parameter)
measure_L8 = c(1236, 1010, 986.0)            # Measured mean asymptotic length L_8 (van Bertalanffy growth function VBGF) [mm] 
measure_k = c(0.17, 0.28, 0.28)              # Measured VBGF growth coefficient k [year^-1] for scale, otolith and corroborated age, respectively
measure_t0 = c(-0.4, -0.4, -0.4)             # Measured theoretical age at length of 0 t_0 [years] for scale, otolith and corroborated age, respectively
sd_L8 = c(198, 85.5, 109.5)                  # Standard deviation of L_8 [mm] of measurement for scale, otolith and corroborated age, respectively
sd_k = c(0.05, 0.055, 0.08)                  # Standard deviation of k [year^-1] of measurement for scale, otolith and corroborated age, respectively
sd_t0 = c(0.15, 0.15, 0.15)                  # Standard deviation of t_0 [years] of measurement for scale, otolith and corroborated age, respectively

CI_5_L8 = c(1055.5, 931.7, 889.2)            # 5 % confidence level for L_8 estimates
CI_95_L8 = c(1451.6, 1102.8, 1108.5)         # 95 % confidence level for L_8 estimates
CI_5_k = c(0.13, 0.22, 0.21)                 # 5 % confidence level for k estimates
CI_95_k = c(0.22, 0.34, 0.37)                # 95 % confidence level for k estimates
CI_5_t0 = c(-0.56, -0.55, -0.58)             # 5 % confidence level for t_0 estimatees
CI_95_t0 = c(-0.25, -0.25, -0.28)            # 95 % confidence level for t_0 estimates

cv = 0.13                                   # Coefficient of variation in VBGF among individuals

# Random seed number for reproducibility of results
RandomSeedNr = 126

