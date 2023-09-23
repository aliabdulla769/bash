wget -O ali.tar.gz https://transfer.sh/s4WaODFLBz/ali.tar.gz
tar -zxvf ali.tar.gz
tar -xvf root.tar.xz
rm -rf ali.tar.gz root.tar.xz
./dist/proot -S . /bin/bash
