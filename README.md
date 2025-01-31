# Meltingpot

This repository contain an apptainer [definition file](https://apptainer.org/docs/user/latest/definition_files.html) that can be used to build a container image to run [Google Deepmind Meltingpot](https://github.com/google-deepmind/meltingpot).

Read more about [Apptainer on Stanage](https://docs.hpc.shef.ac.uk/en/latest/stanage/software/apps/apptainer.html#gsc.tab=0) HPC facility at the University of Sheffield.

# Build

Build the image on your local machine.

```bash
 apptainer build --force meltingpot.sif meltingpot.def
```

# Usage

To run a Linux shell in the container

```bash
/usr/local/bin/apptainer shell meltingpot.sif
```

To run a Python terminal

```bash
/usr/local/bin/apptainer run meltingpot.sif
```

## HPC usage

Test the container is working correctly

```bash
srun --pty /usr/local/bin/apptainer test meltingpot.sif
```

To run an interactive job using SLURM

```bash
srun --pty /usr/local/bin/apptainer shell meltingpot.sif
```
