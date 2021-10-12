# 1. Select the best branch, tag or commit hash from https://github.com/apple/llvm-project
# The recommended approach is to use the tagged release that matches the Swift version
# returned by the command below:
# $ xcrun -sdk iphoneos swiftc --version

LLVM_BRANCH_TAG="5.4.2"
LLVM_BRANCH="tags/swift-$LLVM_BRANCH_TAG-RELEASE"

# 2. Select the best branch, tag or commit hash from https://github.com/rust-lang/rust

RUST_BRANCH_TAG="nightly-2021-07-25"
RUST_BRANCH="f63ec777bcfdedb752f55ac676ac0724c6cef47e"

# 3. Select a name for the toolchain you want to install as. The toolchain will be installed
# under $HOME/.rustup/toolchains/rust-$RUST_TOOLCHAIN

#BUILD_TARGET="aarch64-apple-ios"
BUILD_TARGET="x86_64-apple-ios"
RUST_TOOLCHAIN="ios-$BUILD_TARGET-$RUST_BRANCH_TAG-swift-${LLVM_BRANCH_TAG//./-}"

