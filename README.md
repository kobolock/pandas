# Library Pandas test 
=====================

Objectif : Apprendre à configurer la librairie pandas à travers snakemake 
pour lire des meta-data à partir d'un fichier tabulé


It is usually advisable to complement YAML based configuration (see above) 
by a sheet based approach for meta-data that is of tabular form. For example, 
such a sheet can contain per-sample information. With the Pandas library such 
data can be read and used with minimal overhead, e.g.,  

`import pandas as pd  `
`samples = pd.read_table("samples.tsv").set_index("samples", drop=False)  `

reads in a table samples.tsv in TSV format and makes every record accessible 
by the sample name. For details, see the Pandas documentation. A fully working 
real-world example containing both types of configuration can be found here.
