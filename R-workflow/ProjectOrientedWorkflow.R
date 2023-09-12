## This workshop discussed project oriented workflows in R

# Book to reference: rstats.wft

# Download scripts to explore libraries
# See "/rstats-wtf-wtf-explore-libraries-*" for scripts
usethis::use_course("rstats-wtf/wtf-explore-libraries", destdir = "C:/Users/larn_/Documents/GitHub/Workshops-Certifications/R-workflow")


# How to project: 
  # dedicated directory
  # RStudio Project
  # Github


# recall rm(list = ls()) only removes objects
# RStudio leaves notes to itself in .Rproj
# Project has directory set

# Use a blank slate to clear environment and remove packages
# The following line sets global settings to allow to start with blank slate
# save_workspace is set to 'never' and load_workspace set to FALSE
# Ensure you save before closing! 
usethis::use_blank_slate()

# In Projects, you want to restart r often
# Session > Restart or Ctrl + Shift + F10 [Windows]

# Change existing folder to or create a new folder to make a project
usethis::create_project("C:/Users/larn_/Documents/GitHub/Workshops-Certifications/R-workflow")

# Packages with file system functions
library(fs) #file path handling
library(here) #project relative paths

# Project Directory
here::here("data", "raw-data.csv")
here::here("data/raw-data.csv")

# User's home directory
file.path("~", ...)
fs::path_home(...)

# Location of installed software
library(thingy)
system.file(..., package = "thingy")

# Absolute paths for stable base
GOOD <- fs::path_home("tmp/test.csv")

# Use here package to build paths in project
# Leave working directory at top level at all times
# Ex:
ggsave(here::here("figs", "built-barchart.png"))

# Relative path to working directory, est by Project
dat <- read.csv("data/installed_packages.csv")

# Relative path within Project directory
dat <- rea.csv(here::here("data/installed-packages.csv"))

# Download files for path scripts
usethis::use_course("rstats-wtf/wtf-fix-paths")


# Lining up projects
# Raw data -> wrangle.R -> data.csv
# data.csv -> model.R -> fits.rds, ests.csv
# data.csv, fits.rds, ests.csv -> make-figs.R -> figs/*
# figs/*, ests.csv -> report.Rmd -> report.html, .docx, .pdf
