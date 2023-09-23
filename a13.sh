wget -O ali.tar.gz https://bashupload.com/F6z7o/ali.tar.gz
tar -zxvf ali.tar.gz
tar -xvf root.tar.xz
rm -rf ali.tar.gz root.tar.xz
./dist/proot -S . /bin/bash
