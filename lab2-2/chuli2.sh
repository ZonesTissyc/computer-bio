> docking_mouse_sLex.pdb
infilename="out.pdbqt"
residuename="0SA 3LB WYB OME 0fA"
for i in $residuename;
do
grep $i "$infilename" >> "docking_mouse_sLex.pdb";
echo "TER" >> "docking_mouse_sLex.pdb";
done
echo "END" >> "docking_mouse_sLex.pdb"
