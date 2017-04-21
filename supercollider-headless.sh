#! /bin/bash

if [ ! -d "supercollider" ]; then
    git clone --recursive git://github.com/supercollider/supercollider --depth 1
fi
cd supercollider
mkdir build && cd build
export CC=/usr/bin/gcc-4.8
export CXX=/usr/bin/g++-4.8
cmake -L -DCMAKE_BUILD_TYPE="Release" -DBUILD_TESTING=OFF -DSSE=OFF -DSSE2=OFF -DSUPERNOVA=OFF -DNATIVE=OFF -DSC_WII=OFF -DSC_IDE=OFF -DSC_QT=OFF -DSC_ED=OFF -DSC_EL=OFF -DSC_VIM=OFF ..
make -j 4
sudo make install
sudo ldconfig
cd ../..
rm -rf supercollider
sudo mv /usr/local/share/SuperCollider/SCClassLibrary/Common/GUI /usr/local/share/SuperCollider/SCClassLibrary/scide_scqt/GUI
sudo mv /usr/local/share/SuperCollider/SCClassLibrary/JITLib/GUI /usr/local/share/SuperCollider/SCClassLibrary/scide_scqt/JITLibGUI
