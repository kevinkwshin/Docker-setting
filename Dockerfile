# 2.0.0a0-gpu-py3
FROM tensorflow/tensorflow:1.13.0rc1-gpu-py3

MAINTAINER kevinkwshin

RUN apt update && apt install -y git libgtk2.0-dev libsm6 libxext6 libxrender-dev python-tk libglib2.0-0 libsm6 libxrender1 libfontconfig1

RUN pip3 install SimpleITK nibabel nipype pyradiomics pydicom dicom2nifti 
RUN pip3 install opencv-python scikit-image jupyter sklearn librosa imgaug segmentation_models keras


RUN pip3 install natsort h5py tqdm pandas nltk numpy xlrd cython
RUN pip3 install jupyter_contrib_nbextensions && jupyter contrib nbextension install
RUN pip3 install Autopep8 seaborn

WORKDIR /workspace

RUN ls
