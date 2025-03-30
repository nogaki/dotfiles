cd ~/local/src
wget https://github.com/OpenMathLib/OpenBLAS/releases/download/v0.3.29/OpenBLAS-0.3.29.tar.gz
tar -zxvf OpenBLAS-0.3.29.tar.gz
cd OpenBLAS-0.3.29/
make
make PREFIX=~/local/stow/OpenBLAS-0.3.29 install
cd ~/local/stow
stow -v OpenBLAS-0.3.29/

cd ~
