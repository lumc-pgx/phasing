# Phasing 

**Creation of phased allele sequences**  

The phasing module generates phased and polished allele sequences:  
- CCS sequences are used to partition the sequences into potential phases
- LAA is used to generate high quality consensus sequences for each phase
- Metrics and summaries are produced to aid with interpretation

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

