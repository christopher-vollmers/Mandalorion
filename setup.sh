
#!/bin/bash

cwd=$(pwd)

# Resolve dependencies

echo 'Pip installables (scipy, numpy, mappy, Cython)'
python3 -m pip install --user --upgrade numpy mappy Cython matplotlib

echo "minimap2"
git clone https://github.com/lh3/minimap2
cd minimap2 && make
cd $cwd

echo 'abpoa'
wget https://github.com/yangao07/abPOA/releases/download/v1.4.1/abPOA-v1.4.1.tar.gz
tar -zxvf abPOA-v1.4.1.tar.gz
cd abPOA-v1.4.1; make
cd $cwd
rm abPOA-v1.4.1.tar.gz

echo 'Done'
