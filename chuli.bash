>sLex.pdb;
infilename="sLex-temp.pdb"
residuename="0SA 3LB WYB OME 0fA"
for i in $residuename;
do
grep "$i " "$infilename" >> "sLex.pdb";
echo "TER" >> "sLex.pdb";
done
echo "END" >> "sLex.pdb";
