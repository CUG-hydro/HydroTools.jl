Γd = 0.0098 # K/m

T0 = 273.15

K0 = 273.15

L = 2.5e6

Es_T0 = 6.11

atm = 101.325 # kPa
Pa_atm = 101.325 # kPa

#' Molecular weight
#' 
#' @description
#' `Mw`: Molecular weight of dry air \eqn{M_d = 28.9634g/mol}
#' `Md`: [Molecular weight](https://en.wikipedia.org/wiki/Molar_mass) of water vapor \eqn{M_w = 18.01528g/mol}
#' `epsilon`: the ratio of `Mw` to `Md`
Mw = 18.01528
Md = 28.96340

M_dry = 18.01528 * 1e-3 # [kg mol-1]
M_h2o = 28.96340 * 1e-3

#' @rdname Mw
ϵ = Mw / Md

#' Specific gas constants
#' 
#' @description
#' - `R`: [gas constant](https://en.wikipedia.org/wiki/Gas_constant), J/(mol K)
#' - `Rw`: [Specific gas constant](https://en.wikipedia.org/wiki/Gas_constant#Specific_gas_constant)
#' of water vapor \eqn{R_w = \frac{1000R}{M_w} = 461.52J/(kg K)}.
#' - `Rd`: Specific gas constant of dry air (J/(kg K)).
#' @export
R = 8.3144621 # J/(mol K)

#' @rdname R
#' @export
Rw = R / M_h2o # ≈ 461.5 [J kg-1 K-1]

#' @rdname R
#' @export
Rd = R / M_dry # ≈ 287.1 [J kg-1 K-1]

Cp = 1.013 * 1e-3 # [MJ kg-1 K-1]
# Cp = 1.0164 * 1e-3 # MJ kg-1 degC-1
# Cp = 1.0164,  // 4.2 * 0.242, specific heat at constant pressure, 1.013  [J g-1 0C-1]

# Stefan-Boltzmann constant
Stefan = 4.903e-9 # u"MJ / (K^4 * m^2 *d)" # Stefan-Boltzmann constant
# W2MJ的关系, [W m−2 K−4], https://en.wikipedia.org/wiki/Stefan%E2%80%93Boltzmann_law
σ = 5.67e-8
# σ = 5.670374419 * 1e-8

export atm, Stefan, K0, Cp
