#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno25/blast
#SBATCH -J advanced-lab7
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE
#SBATCH --mail-user=MAIL@um.es

#Cargamos el modulo singularity 
module load singularity
#Descomprimimos la base de datos
gzip -d -k zebrafish.1.protein.faa.gz
#Ejecutamos la imagen y los comandos correspodientes para obtener los resultados
#Primero se prepara la base de datos zebrafish
singularity run /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot
#Se realiza la alineación usando blastp
singularity run /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

#Para descargar todos los módulos usados, en este caso solo uno
module purge


