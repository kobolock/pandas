import pandas as pd
from snakemake.utils import validate

configfile: "config.yaml"
#validate(config, schema="schema/config.schema.yaml")

samples = pd.read_table(config["samples"]).set_index("sample", drop=False)
validate(samples, schema="schema/samples.schema.yaml")


rule all:
    input:
        expand("test.{sample}.txt", sample=samples.index)


rule a:
    params:
        name="pandas",
        nthread=1
    output:
        "test.{sample}.txt"
    shell:
        "touch {output}"
