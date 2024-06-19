FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential \
bash \
binutils \
bison \
coreutils \
diffutils \
findutils \
gawk \
gcc \
grep \
gzip \
m4 \
make \
patch \
perl \
python3 \
sed \
tar \
texinfo \
xz-utils \
wget \
pv

ENV LFS=/mnt/lfs
ENV LFS_TGT=x86_64-lfs-linux-gnu
ENV PATH=/tools/bin:/bin:/usr/bin:/sbin:/usr/sbin

WORKDIR $LFS/sources

RUN mkdir -p $LFS/tools && ln -s $LFS/tools

COPY ["scripts/", "$LFS/tools"]

RUN chmod +x $LFS/tools/*.sh && sync

RUN $LFS/tools/version-check.sh

ENTRYPOINT [ "../tools/build.sh" ]