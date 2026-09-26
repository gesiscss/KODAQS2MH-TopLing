install_and_load_packages <- function() {
  cran_packages <- c(
    "tidyverse", "polyglotr", "quanteda", "stm",
    "VennDiagram", "grid", "proxy", "gtools", "remotes"
  )
  to_install <- cran_packages[!cran_packages %in% installed.packages()[, "Package"]]
  if(length(to_install)) install.packages(to_install)
  lapply(cran_packages, library, character.only = TRUE)
  if (!requireNamespace("piercer", quietly = TRUE)) {
    remotes::install_github("sjpierce/piercer@7e53e108a1643e026ffa8a4cfac5bbcac845ea2a")
  }
  library(piercer)
}
install_and_load_packages()
