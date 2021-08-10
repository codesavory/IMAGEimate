# IMAGEimate
IMAGEimate is an end-to-end pipeline to create realistic animatable 3D avatars from a single image using neural networks. This project is an end-to-end system built using two research works and relevant opensource contributions, so their license and terms follows for this project - 
1. PIFuHD : Multi-Level Pixel-Aligned Implicit Function for High-Resolution 3D Human Digitization (CVPR 2020) - https://shunsukesaito.github.io/PIFuHD/
2. IPNet  : Combining Implicit Function Learning and Parametric Models for 3D Human Reconstruction (ECCV 2020) - https://virtualhumans.mpi-inf.mpg.de/ipnet/
3. AIST++ : Dance Motion Dataset from National Institute of Advanced Industrial Science and Technology (AIST）- https://google.github.io/aistplusplus_dataset/index.html <br/>
   AMASS  : Archive of Motion Capture as Surface Shapes (AMASS) from Max Planck Institute for Intelligent Systems(MPI) - https://amass.is.tue.mpg.de/
4. SMPL   : Skinned Multi-person Linear Model from MPI, you need to register, accept the license terms and download models - https://smpl.is.tue.mpg.de/
   
This project was tested on <br /> 
```
OS      : Ubuntu 20.04 LTS  
GPU     : Nvidia RTX2060M with driver 470
CUDA    : 10.1
Python  : 3.7
PyTorch : 1.8.1
```

Follow the [instructions.txt](https://github.com/codesavory/IMAGEimate/blob/main/instruction.txt) to install dependencies and required libraries and download checkpoints<br /> 
Follow the [run_imageimate.sh](https://github.com/codesavory/IMAGEimate/blob/main/run_imageimate.sh) for how to make modifications to the code and get relevant results

Results - 
Input Image            |  PIFuHD Mesh | SMPLD Registration | Reposed Animation
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:|
![](https://github.com/codesavory/IMAGEimate/blob/main/screenshots/00input_image.jpg)|  ![](https://github.com/codesavory/IMAGEimate/blob/main/screenshots/01pifuhd_mesh.png)  | ![](https://github.com/codesavory/IMAGEimate/blob/main/screenshots/03pifuhd_to_ipnet.png ) | ![](https://github.com/codesavory/IMAGEimate/blob/main/screenshots/suriya-fbx-2021-08-04-221707.gif)

