AICweights <- function(AIC_values){
  # AIC_values: vector with AIC values
  deltaAIC <- AIC_values - min(AIC_values)
  expdeltaAIC <- exp(-0.5*deltaAIC)
  AICweights <- expdeltaAIC/(sum(expdeltaAIC))
  return(AICweights)
}
