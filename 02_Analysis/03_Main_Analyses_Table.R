# This doesn't really look that great
stargazer(M1,M2,M3,
          se = RCSE_list)

# Create some labeling ----------------------------------------------------

variable_labels <- c("Intercept","Income 25 - 50","Income 50 - 75",
                     "Income 75 - 100","Asset index","Asset x Inc. 25-50",
                     "Asset x Inc. 50-75","Asset x Inc. 75-100")

omit_stats <- c("rsq","ser","f")

# Sink table into paper folder --------------------------------------------

sink("03_Paper/tables/main_results.tex")
stargazer(
  M1,M2,M3,                           # Our models
  se = RCSE_list,                     # Custom standard errors
  header = F,                         # Take out the header
  covariate.labels = variable_labels, # New labels for the variables
  omit.stat = omit_stats,             # Which statistics to exclude
  no.space = T,                       # Make the table more compact
  float = F,                          # Don't put it in a table environment
  dep.var.labels = c("Y"))            # Label the dependent variable
sink()

# Tidy up -----------------------------------------------------------------

rm(omit_stats,variable_labels)
