#!bin/bash

export SUBJECTS_DIR=subjects

mkdir ${SUBJECTS_DIR}

T1w_filename=$1

recon-all -s 'output' -i $T1w_filename -autorecon1 && \
recon-all -s 'output' -autorecon2

# Convert the ouput files to nifti format
mri_convert subjects/output/mri/orig.mgz subjects/output/mri/orig.nii
mri_convert subjects/output/mri/orig.mgz subjects/output/mri/orig.nii
mri_convert subjects/output/mri/orig.mgz subjects/output/mri/orig.nii
mri_convert subjects/output/mri/orig.mgz subjects/output/mri/orig.nii
