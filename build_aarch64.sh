# 1. configure
cmake -B build_aarch64 \
      -DCMAKE_TOOLCHAIN_FILE=aarch64-toolchain.cmake \
      -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_SHARED=ON \
      -DBUILD_COMPILER_DATA=OFF

# 2. compile
cmake --build build_aarch64 -j$(nproc)