#!/bin/bash
#SBATCH --account=rrg-rbond-ac
#SBATCH --nodes=20
#SBATCH --ntasks-per-node=40
#SBATCH --time=12:00:00
#SBATCH --job-name=rerun_gizmo
#SBATCH --output=gizmo_runs/rerun_gizmo.out
#SBATCH --error=gizmo_runs/rerun_gizmo.err
#SBATCH --mail-type=BEGIN          # Send an email when the job starts


cd /scratch/m/murray/dtolgay/gizmo/rerun_FIRE/gizmo 

# load the necessary modules 
module purge
module load intel intelmpi gsl hdf5 fftw

# rm old files 
# rm parameters.txt-usedvalues
# rm gizmo_runs/*.out
# rm gizmo_runs/*.err

# Run gizmo 
mpirun -np 800 ./GIZMO ./parameters.txt 2
