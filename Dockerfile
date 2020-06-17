FROM ubuntu:latest
RUN   dpkg --add-architecture i386 \
 &&   apt-get update \                                                                                                                                                                                                                        
 &&   apt-get install --yes ca-certificates wget libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 make cmake hashdeep \                                                                                                                                                                                                  
 &&   update-ca-certificates    
RUN wget -qO- https://github.com/AutomotiveDevOps/powerpc-eabivle-gcc-dockerfiles/releases/download/v2.1.10/S32DS_build_tools.tar.bz2 | tar xjvf - -C /

COPY devkit_5744p.mk /S32DS/build_tools/
ENV PATH=${PATH}:/S32DS/build_tools/powerpc-eabivle-4_9/bin
