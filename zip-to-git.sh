#/bin/sh
set -e

REPODIR="jsch"

export GIT_AUTHOR_NAME="Atsuhiko Yamanaka"
export GIT_AUTHOR_EMAIL="ymnk@jcraft.com"

if [ ! -e ${REPODIR} ] ; then
    mkdir ${REPODIR}
    cd ${REPODIR}
    git init
    cd ..
else
    echo "Output directory ${REPODIR} already exists. Aborting!"
    exit -1
fi

for VERSION in $(for x in $(seq 3 13) ; do echo "0.0.${x}" ; done ) $(for x in $(seq 0 54) ; do echo "0.1.${x}" ; done ) ; do
    ZIPFILE="jsch-${VERSION}.zip"
    BASENAME="jsch-${VERSION}"
    CDATE=$(stat ${ZIPFILE} --format="%y")
    ZIPMD5=$(md5sum ${ZIPFILE})

    rm -rf ${REPODIR}/[A-Za-z]*
    unzip -q ${ZIPFILE}
    cd ${BASENAME}
    mv * ../${REPODIR}
    cd ../${REPODIR}
    git add *
    git commit -a --date="${CDATE}" -m "JSch ${VERSION}" -m "${ZIPMD5}"
    cd ..
    rmdir ${BASENAME}
done
