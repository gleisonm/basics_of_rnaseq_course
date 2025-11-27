### ---------------------------
### Instalação dos pacotes
### ---------------------------

### --- Pacotes do CRAN ---
cran_pkgs <- c(
  "dplyr",
  "tidyverse",
  "PCAtools",
  "ggplot2",
  "pheatmap",
  "ggrepel"
)

for (pkg in cran_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

### --- Pacotes do Bioconductor ---
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

bioc_pkgs <- c(
  "DESeq2",
  "clusterProfiler",
  "AnnotationDbi",
  "org.Mm.eg.db"
)

for (pkg in bioc_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    BiocManager::install(pkg)
  }
}

### ---------------------------
### Testando carregamento
### ---------------------------
library(DESeq2)
library(dplyr)
library(tidyverse)
library(PCAtools)
library(ggplot2)
library(pheatmap)
library(clusterProfiler)
library(AnnotationDbi)
library(org.Mm.eg.db)
library(ggrepel)

message("✓ Todos os pacotes foram instalados e carregados com sucesso!")