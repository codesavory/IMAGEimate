# IMAGEimate
IMAGEimate is an end-to-end pipeline to create realistic animatable 3D avatars from a single image using neural networks. This project is an end-to-end system built using two research works and relevant opensource contributions, so their license and terms follows for this project - 
1. PIFuHD : Multi-Level Pixel-Aligned Implicit Function for High-Resolution 3D Human Digitization (CVPR 2020) - https://shunsukesaito.github.io/PIFuHD/
2. IPNet  : Combining Implicit Function Learning and Parametric Models for 3D Human Reconstruction (ECCV 2020) - https://virtualhumans.mpi-inf.mpg.de/ipnet/
3. AIST++ : Dance Motion Dataset from National Institute of Advanced Industrial Science and Technology (AIST）- https://google.github.io/aistplusplus_dataset/index.html <br/>
   AMASS  : Archive of Motion Capture as Surface Shapes (AMASS) from Max Planck Institute for Intelligent Systems(MPI) - https://amass.is.tue.mpg.de/
4. SMPL   : Skinned Multi-person Linear Model from MPI, you need to register, accept the license terms and download models - https://smpl.is.tue.mpg.de/
   
This project was tested on <br /> 
OS      : Ubuntu 20.04 LTS  <br /> 
GPU     : Nvidia RTX2060m with driver 470<br /> 
CUDA    : 10.1<br /> 
Python  : 3.7<br /> 
PyTorch : 1.8.1<br /> 

Follow the [instructions.txt](https://github.com/codesavory/IMAGEimate/blob/main/instruction.txt) to install dependencies and required libraries and download checkpoints<br /> 
Follow the [run_imageimate.sh](https://github.com/codesavory/IMAGEimate/blob/main/run_imageimate.sh) for how to make modifications to the code and get relevant results

Results - 
Input Image            |  PIFuHD Mesh | SMPLD Registration | Reposed Animation
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
<img src="https://github.com/codesavory/IMAGEimate/blob/main/screenshots/IMG_3392.2.jpg" alt="drawing" width="300" height="400"/> |  <img src="https://github.com/codesavory/IMAGEimate/blob/main/screenshots/pifuhd_meshes.png" alt="drawing" width="300" height="400"/>  | <img src="https://github.com/codesavory/IMAGEimate/blob/main/screenshots/SMPLd_Fit.png" alt="drawing" width="200" height="400"/>  | <img src="https://github.com/codesavory/IMAGEimate/blob/main/screenshots/suriya-fbx-2021-08-04-221707.gif" alt="drawing" width="500" height='400'/> 

