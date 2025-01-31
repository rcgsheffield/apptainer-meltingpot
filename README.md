# Meltingpot

This repository contain an apptainer [definition file](https://apptainer.org/docs/user/latest/definition_files.html) that can be used to build a container image to run [Google Deepmind Meltingpot](https://github.com/google-deepmind/meltingpot).

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

To run an interactive job using SLURM

```bash
srun --pty /usr/local/bin/apptainer shell meltingpot.sif
```
