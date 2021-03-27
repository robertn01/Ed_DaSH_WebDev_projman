# This script is to adopt and implement gitgantt based on the following source: https://github.com/atfutures-labs/gitgantt 
# The purpose of this R package is to integrate and sync with GitHub issues and output a Gantt-chart visualisation


install.packages('pacman', dependencies = TRUE)
require(pacman)

p_load(
  tidyverse, # tidyverse 
  here, # computational reproducibility 
  remotes
)

remotes::install_github("robinlovelace/gitgantt")

library(gitgantt)

# How to use:
gg_timevis(owner = "robertn01", repo = "Ed_DaSH_website_proto")
#> 3 issues returned for the repo gitgantt

# add lines containing GanttStart: and GanttDue: to your issues and use gitgantt to convert them into an attractive Gantt chart in a single line of code!

gh::gh("PATCH /repos/:owner/:repo", 
        owner = "robertn01", 
        repo = "my-new-repo-for-gh-testing", 
        private = TRUE)

