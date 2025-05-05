#!/bin/bash

# Download the benchmark data if it doesn't already exist.
mkdir -p "MaxPlanckInstituteGromacsBenchmarks"
cd "MaxPlanckInstituteGromacsBenchmarks"
if [ ! -e benchMEM.zip ] ; then
    wget https://www.mpinat.mpg.de/benchMEM.zip
    unzip "benchMEM.zip"
fi
pwd
cd -
pwd
echo "-----------------------------------"
#source "/home/manos/original_apps/gromacs_2025/gromacs-2025.1/build/scripts/GMXRC"
./gromacs-2025.1/build/bin/gmx mdrun -s MaxPlanckInstituteGromacsBenchmarks/benchMEM.tpr -nb gpu 
echo "Done"
