#!/bin/bash

module load singularity
echo "Comando hostname en ibsen"
hostname
echo
echo "Comando hostname en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif hostname
echo
echo "Comando cat en ibsen"
cat /etc/os-release
echo
echo "Comando cat en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif cat /etc/os-release
echo
echo "Comando pwd en ibsen"
pwd
echo
echo "Comando pwd en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif pwd
echo
echo "Comando ls -l /home en ibsen"
ls -l /home
echo
echo "Comando ls -l /home en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif ls -l /home
echo
echo "Comando python -version en ibsen"
python --version
echo 
echo "Comando python -version en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif python --version 
echo
module load anaconda/2020.11
echo "Ejecución del archivo kmer-solution.ipynb en ibsen"
ipython ./source/kmer-solution.ipynb
echo
echo "Ejecución del archivo kmer-solution.ipynb en el contenedor my-python.sif de Singularity"
singularity exec ./singularity/my-python.sif ipython ./source/kmer-solution.ipynb
module purge
