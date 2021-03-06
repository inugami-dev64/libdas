#!/bin/sh

OUTDIR=Compile_Test
GLTF_PATH=~/git/glTF-Sample-Models

# Create $OUTDIR if it doesn't exist
if [ ! -d $OUTDIR ]; then
    mkdir $OUTDIR
fi

# Create $OUTDIR/Embedded if it doesn't exist
if [ ! -d $OUTDIR/Embedded ]; then
    mkdir $OUTDIR/Embedded
fi

# Create $OUTDIR/Blobbed if it doesn't exist
if [ ! -d $OUTDIR/Blobbed ]; then
    mkdir $OUTDIR/Blobbed
fi

# For each embedded file
for f in ${GLTF_PATH}/2.0/**/glTF-Embedded/*.gltf; do
    dastool convert "$f" -o $OUTDIR/Embedded/

    ## Check if command succeeded
    if [ $? -eq 0 ]; then
        echo OK
    else
        echo "FAIL"
        echo "File name: $f"
        exit
    fi
done

# For each non-embedded file
for f in $GLTF_PATH/2.0/**/glTF/*.gltf; do
    dastool convert "$f" -o $OUTDIR/Blobbed/

    ## Check if command succeeded
    if [ $? -eq 0 ]; then
        echo OK
    else
        echo "FAIL"
        echo "File name: $f"
        exit
    fi
done
