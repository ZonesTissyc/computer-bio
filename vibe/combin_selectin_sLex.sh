#!/bin/bash

sed -n '1,$p' crystal_human_E-selectin.pdb | tac | sed '1d' | tac >crystal_human_E-selectin_sLex.pdb
echo "TER" >> crystal_human_E-selectin_sLex.pdb
cat sLex.pdb >> crystal_human_E-selectin_sLex.pdb
