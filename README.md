## Install Open3D
git clone --recursive https://github.com/intel-isl/Open3D
cd Open3D
export Open3D_HOME=$PWD
bash util/scripts/install-deps-ubuntu.sh
## Install pybind
git clone https://github.com/pybind/pybind11.git
cd pybind11
mkdir build && cd build
pip3 install pytest
cmake ..
make
make install
## Build Open3D
cd $Open3D_HOME
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=$Open3D_HOME ..
make
make install
## Install python open3d
pip3 install open3d==0.8.0
