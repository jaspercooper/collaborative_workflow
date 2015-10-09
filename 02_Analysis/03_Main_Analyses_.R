# Define the formulae -----------------------------------------------------

F1 <- Y ~ income
F2 <- Y ~ income + assets
F3 <- Y ~ income + assets + income*assets

# Run the models ----------------------------------------------------------

M1 <- lm(F1,data)
M2 <- lm(F2,data)
M3 <- lm(F3,data)

# Get the clustered standard errors ---------------------------------------

RCSE_list <- lapply(X = list(M1,M2,M3),
                    FUN = cl.se,
                    dat = data,
                    cluster = data$cluster
                    )


# Tidy up -----------------------------------------------------------------

rm(F1,F2,F3)
