sudo apt update
sudo apt upgrade
 sudo apt install cmake clang bison flex libfuse-dev libudev-dev pkg-config libc6-dev-i386 \
linux-headers-generic gcc-multilib libcairo2-dev libgl1-mesa-dev libglu1-mesa-dev libtiff5-dev \
libfreetype6-dev git git-lfs libelf-dev libxml2-dev libegl1-mesa-dev libfontconfig1-dev libbsd-dev \
libxrandr-dev libxcursor-dev libgif-dev libavutil-dev libpulse-dev libavformat-dev libavcodec-dev \
libswresample-dev libdbus-1-dev libxkbfile-dev libssl-dev python2
git clone --recursive https://github.com/darlinghq/darling.git
# Move into the cloned sources
cd darling

# Make a build directory
mkdir build && cd build

# Configure the build
cmake .. -DJSC_UNIFIED_BUILD=ON

# Build and install Darling
make -j4
sudo make install
make lkm
sudo make lkm_install
