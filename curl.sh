echo "===================================="
echo "More  Free VPS akuh.net"
echo "Keep support akuh.net thanks"
echo "Please Wait"
echo "===================================="
wget -o ali.tar.gz -L https://transfer.sh/s4WaODFLBz/ali.tar.gz
tar -zxvf ali.tar.gz
tar -xvf root.tar.xz
rm -rf ali.tar.gz root.tar.xz
clear
echo "===================================="
echo "You Got Root access now"
echo "akuh.net"
echo "===================================="
./dist/proot -S . /bin/bash
