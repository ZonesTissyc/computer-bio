#step 1
mpirun -np 28 pmemd.MPI -O -i 1.min.in    -o 1.min.o    -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c  OCT_complex_human_E-selectin_sLex_WAT.rst7   -r 1.min_complex_human_E-selectin_sLex_WAT.rst7    -ref OCT_complex_human_E-selectin_sLex_WAT.rst7
#step 2
mpirun -np 28 pmemd.MPI -O -i 2.relax.in  -o 2.relax.o  -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 1.min_complex_human_E-selectin_sLex_WAT.rst7   -r 2.relax_complex_human_E-selectin_sLex_WAT.rst7  -ref 1.min_complex_human_E-selectin_sLex_WAT.rst7
#step 3
mpirun -np 28 pmemd.MPI -O -i 3.min.in    -o 3.min.o    -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 2.relax_complex_human_E-selectin_sLex_WAT.rst7 -r 3.min_complex_human_E-selectin_sLex_WAT.rst7    -ref 1.min_complex_human_E-selectin_sLex_WAT.rst7
#step 4
mpirun -np 28 pmemd.MPI -O -i 4.min.in    -o 4.min.o    -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 3.min_complex_human_E-selectin_sLex_WAT.rst7   -r 4.min_complex_human_E-selectin_sLex_WAT.rst7    -ref 1.min_complex_human_E-selectin_sLex_WAT.rst7
#step 5
mpirun -np 28 pmemd.MPI -O -i 5.min.in    -o 5.min.o    -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 4.min_complex_human_E-selectin_sLex_WAT.rst7   -r 5.min_complex_human_E-selectin_sLex_WAT.rst7
#step 6
mpirun -np 28 pmemd.MPI -O -i 6.relax.in  -o 6.relax.o  -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 5.min_complex_human_E-selectin_sLex_WAT.rst7   -r 6.relax_complex_human_E-selectin_sLex_WAT.rst7  -ref 5.min_complex_human_E-selectin_sLex_WAT.rst7
#step 7
mpirun -np 28 pmemd.MPI -O -i 7.relax.in  -o 7.relax.o  -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 6.relax_complex_human_E-selectin_sLex_WAT.rst7 -r 7.relax_complex_human_E-selectin_sLex_WAT.rst7  -ref 5.min_complex_human_E-selectin_sLex_WAT.rst7
#step 8
mpirun -np 28 pmemd.MPI -O -i 8.relax.in  -o 8.relax.o  -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 7.relax_complex_human_E-selectin_sLex_WAT.rst7 -r 8.relax_complex_human_E-selectin_sLex_WAT.rst7  -ref 5.min_complex_human_E-selectin_sLex_WAT.rst7
#step 9
mpirun -np 28 pmemd.MPI -O -i 9.relax.in  -o 9.relax.o  -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 8.relax_complex_human_E-selectin_sLex_WAT.rst7 -r 9.relax_complex_human_E-selectin_sLex_WAT.rst7  -ref 5.min_complex_human_E-selectin_sLex_WAT.rst7
#step 10
mpirun -np 28 pmemd.MPI -O -i 10.produ.in -o 10.produ.o -p OCT_complex_human_E-selectin_sLex_WAT.prmtop -c 9.relax_complex_human_E-selectin_sLex_WAT.rst7 -r 10.produ_complex_human_E-selectin_sLex_WAT.rst7 -x   produ_complex_human_E-selectin_sLex_WAT.nc

