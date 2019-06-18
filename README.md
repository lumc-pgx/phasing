# Phasing 

**Creation of phased allele sequences**  

The phasing module generates phased and polished allele sequences:  
- CCS sequences are used to partition the sequences into potential phases
- LAA is used to generate high quality consensus sequences for each phase
- Metrics and summaries are produced to aid with interpretation

```plantuml
digraph snakemake_dag {
        graph [bb="0,0,105,252",
                bgcolor=white,
                margin=0
        ];
        node [fontname=sans,
                fontsize=10,
                label="\N",
                penwidth=2,
                shape=box,
                style=rounded
        ];
        edge [color=grey,
                penwidth=2
        ];
        0        [color="0.00 0.6 0.85",
                height=0.5,
                label=link_source,
                pos="65,234",
                width=0.97222];
        1        [color="0.17 0.6 0.85",
                height=0.5,
                label=ccs_amplicon,
                pos="65,162",
                width=1.1181];
        0 -> 1   [pos="e,65,180.1 65,215.7 65,207.98 65,198.71 65,190.11"];
        2        [color="0.33 0.6 0.85",
                height=0.5,
                label=haplotypes,
                pos="34,90",
                width=0.95139];
        1 -> 2   [pos="e,41.575,108.1 57.337,143.7 53.808,135.73 49.544,126.1 45.631,117.26"];
        3        [color="0.50 0.6 0.85",
                height=0.5,
                label=all,
                pos="65,18",
                width=0.75];
        1 -> 3   [pos="e,69.869,36.021 69.869,143.98 72.564,133.67 75.637,120.19 77,108 78.778,92.099 78.778,87.901 77,72 76.042,63.43 74.238,54.223 72.315,\
45.926"];
        2 -> 3   [pos="e,57.425,36.104 41.663,71.697 45.192,63.728 49.456,54.1 53.369,45.264"];
}
```

## Requirements
- [Conda/Miniconda](https://conda.io/miniconda.html)  
- [ccscheck](https://github.com/PacificBiosciences/ccscheck)

## Installation
- Clone the repository
  - `git clone https://git.lumc.nl/PharmacogenomicsPipe/phasing.git`

- Change to the phasing directory
  - `cd phasing

- Create a conda environment for running the pipeline
  - `conda env create -n phasing -f environment.yaml`

- In order to use the pipeline on the cluster, update your .profile to use the drmaa library:
  - `echo "export DRMAA_LIBRARY_PATH=libdrmaa.so.1.0" >> ~/.profile`
  - `source ~/.profile`

## Configuration
Pipeline configuration settings can be altered by editing [config.yaml](config.yaml).  

## Execution
- Activate the conda environment
  - `source activate phasing`
- For parallel execution on the cluster
  - `pipe-runner`
- To specify that the pipeline should write output to a location other than the default:
  - `pipe-runner --directory path/to/output/directory`

