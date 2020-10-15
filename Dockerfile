FROM ubuntu:latest
# Install required tools
RUN   dpkg --add-architecture i386 \
 &&   apt-get update \                                                                                                                                                                                                                        
 &&   DEBIAN_FRONTEND=noninteractive apt-get install -o APT::Immediate-Configure=false --yes ca-certificates wget libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 make cmake hashdeep bzip2 \                                                                                                                                                                                                  
 &&   update-ca-certificates    
# Get the S32DS build_tools folder, extracted from S32PA.
RUN wget -qO- https://github.com/AutomotiveDevOps/powerpc-eabivle-gcc-dockerfiles/releases/download/v2.1.10/S32DS_build_tools.tar.bz2 | tar xjvf - -C /
# Copy board specific make files to the build_tools directory.
WORKDIR /S32DS/build_tools/
# Add the powerpc-eabivle gcc folder to the path
ENV PATH=${PATH}:/S32DS/build_tools/powerpc-eabivle-4_9/bin
