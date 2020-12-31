# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.
#
#
globalenv={}
linuxglobalimage="cppalliance/droneubuntu1604:1"
windowsglobalimage="cppalliance/dronevs2019"

def main(ctx):
  return [
  linux_cxx("TOOLSET=gcc COMPILER=g++ CXXSTD=03,11 Job 0", "g++", packages="", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': 'b6589fc6ab'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.4 CXXSTD=98,0x Job 1", "g++", packages="g++-4.4", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.4', 'CXXSTD': '98,0x', 'DRONE_JOB_UUID': '356a192b79'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.6 CXXSTD=03,0x Job 2", "g++", packages="g++-4.6", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.6', 'CXXSTD': '03,0x', 'DRONE_JOB_UUID': 'da4b9237ba'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.7 CXXSTD=03,11 Job 3", "g++-4.7", packages="g++-4.7", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.7', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '77de68daec'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.8 CXXSTD=03,11 Job 4", "g++-4.8", packages="g++-4.8", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.8', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': '1b64538924'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.9 CXXSTD=03,11 Job 5", "g++-4.9", packages="g++-4.9", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.9', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': 'ac3478d69a'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-5 CXXSTD=03,11,14,1z Job 6", "g++-5", packages="g++-5", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-5', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': 'c1dfd96eea'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-5 CXXSTD=03,11,14,1z Job 7", "g++-5", packages="g++-5", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-5', 'CXXSTD': '03,11,14,1z', 'CXXSTD_DIALECT': 'cxxstd-dialect=gnu', 'DRONE_JOB_UUID': '902ba3cda1'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-6 CXXSTD=03,11,14,1z Job 8", "g++-6", packages="g++-6", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-6', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': 'fe5dbbcea5'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-6 CXXSTD=03,11,14,1z Job 9", "g++-6", packages="g++-6", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-6', 'CXXSTD': '03,11,14,1z', 'CXXSTD_DIALECT': 'cxxstd-dialect=gnu', 'DRONE_JOB_UUID': '0ade7c2cf9'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-7 CXXSTD=03,11,14,17 Job 10", "g++-7", packages="g++-7", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-7', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': 'b1d5781111'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-8 CXXSTD=03,11,14,17 Job 11", "g++-8", packages="g++-8", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-8', 'CXXSTD': '03,11,14,17', 'DRONE_JOB_UUID': '17ba079149'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-9 CXXSTD=03,11,14,17 Job 12", "g++-9", packages="g++-9", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-9', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': '7b52009b64'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11 Job 13", "clang++", packages="", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11', 'DRONE_JOB_UUID': 'bd307a3ec3'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.5 CXXSTD=03, Job 14", "clang++", packages="clang-3.5", llvm_os="precise", llvm_ver="3.5", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.5', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': 'fa35e19212'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.6 CXXSTD=03, Job 15", "clang++", packages="clang-3.6", llvm_os="precise", llvm_ver="3.6", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.6', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': 'f1abd67035'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.7 CXXSTD=03, Job 16", "clang++", packages="clang-3.7", llvm_os="precise", llvm_ver="3.7", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.7', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '1574bddb75'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.8 CXXSTD=03, Job 17", "clang++-3.8", packages="clang-3.8", llvm_os="precise", llvm_ver="3.8", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.8', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '0716d9708d'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-3.9 CXXSTD=03, Job 18", "clang++-3.9", packages="clang-3.9", llvm_os="precise", llvm_ver="3.9", buildtype="boost", image="cppalliance/droneubuntu1404:1", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-3.9', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '9e6a55b6b4'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-4.0 CXXSTD=03, Job 19", "clang++-4.0", packages="clang-4.0", llvm_os="xenial", llvm_ver="4.0", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-4.0', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': 'b3f0c7f6bb'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-5.0 CXXSTD=03, Job 20", "clang++-5.0", packages="clang-5.0", llvm_os="xenial", llvm_ver="5.0", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-5.0', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '91032ad7bb'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-5.0 -stdlib=l Job 21", "clang++-5.0 -stdlib=libc++", packages="libc++-dev clang-5.0", llvm_os="xenial", llvm_ver="5.0", buildtype="boost", image=linuxglobalimage, environment={'COMPILER': 'clang++-5.0 -stdlib=libc++', 'TOOLSET': 'clang', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': '472b07b9fc'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-6.0 CXXSTD=03, Job 22", "clang++-6.0", packages="clang-6.0", llvm_os="xenial", llvm_ver="6.0", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-6.0', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '12c6fc06c9'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-6.0 -stdlib=l Job 23", "clang++-6.0 -stdlib=libc++", packages="clang-6.0 libc++-dev", llvm_os="xenial", llvm_ver="6.0", buildtype="boost", image=linuxglobalimage, environment={'COMPILER': 'clang++-6.0 -stdlib=libc++', 'TOOLSET': 'clang', 'CXXSTD': '03,11,14', 'DRONE_JOB_UUID': 'd435a6cdd7'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-7 CXXSTD=03,11 Job 24", "clang++-7", packages="clang-7", llvm_os="xenial", llvm_ver="7", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-7', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_UUID': '4d134bc072'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-8 CXXSTD=03,11 Job 25", "clang++-8", packages="clang-8", llvm_os="xenial", llvm_ver="8", buildtype="boost", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-8', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_UUID': 'f6e1126ced'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 26", "clang++", packages="", buildtype="boost", xcode_version="10.2", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,17,2a', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '887309d048'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 27", "clang++", packages="", buildtype="boost", xcode_version="9.4", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'bc33ea4e26'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 28", "clang++", packages="", buildtype="boost", xcode_version="9", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '0a57cb53ba'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 29", "clang++", packages="", buildtype="boost", xcode_version="8.3", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '7719a1c782'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 30", "clang++", packages="", buildtype="boost", xcode_version="8", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '22d200f867'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 31", "clang++", packages="", buildtype="boost", xcode_version="7.3", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': '632667547e'}, globalenv=globalenv),
  osx_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03,11,1 Job 32", "clang++", packages="", buildtype="boost", xcode_version="6.4", environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03,11,14,1z', 'DRONE_JOB_OS_NAME': 'osx', 'DRONE_JOB_UUID': 'cb4e5208b4'}, globalenv=globalenv),
  ]

# from https://github.com/boostorg/boost-ci
load("@boost_ci//ci/drone/:functions.star", "linux_cxx","windows_cxx","osx_cxx","freebsd_cxx")
