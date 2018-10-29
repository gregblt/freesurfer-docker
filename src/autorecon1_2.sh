#!bin/bash

export SUBJECTS_DIR=input

T1w_filename=$1

recon-all -s 'output' -i $T1w_filename -autorecon1 && \
recon-all -s 'output' -autorecon2

# Convert the ouput files to nifti format
mri_convert input/output/mri/orig.mgz input/output/mri/orig.nii
mri_convert input/output/mri/orig.mgz input/output/mri/orig.nii
mri_convert input/output/mri/orig.mgz input/output/mri/orig.nii
mri_convert input/output/mri/orig.mgz input/output/mri/orig.nii
