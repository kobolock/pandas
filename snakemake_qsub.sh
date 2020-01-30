
#!/bin/bash

source activate smk_env

snakemake --jobs 20 --use-conda --cluster "qsub -S /bin/bash \
                                                -N {params.name} \
                                                -cwd \
                                                -o /data1/scratch/saquen/PROJECTS/SNAKEMAKE/pandas/stdout \
                                                -e /data1/scratch/saquen/PROJECTS/SNAKEMAKE/pandas/stderr \
                                                -q short.q \
                                                -l h_rt=24:00:00 \
                                                -pe thread {params.nthread} \
                                                -l h_vmem=2.75G"

source deactivate

