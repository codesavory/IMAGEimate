#todo: add preprocess image

#run PIFUHD
#Change CUDA to 'cpu' to fit pifuHD model pifuHd.apps.recon.py file line 145
#add save plain mesh to recon.py
python -m pifuhd.apps.simple_test -i=./input/test/ -o=./results/test -c=./checkpoints/pifuhd.pt

#run IPNet
#make import changes to smpl_layer.py
#make import changes to tensutils.py
#download smpl models from here https://smpl.is.tue.mpg.de/ and put it in folder - smpl_models folder
#make changes to getFaces() in smpl_paths.py
#make import changes to serialization.py
#change th_smpl_prior.py precomputed=True
#change model path in th_smpl.py
#copy fit_smpl.py, fit_SMPLD.py, animations_IPNet.py into the root of IPNet
python fit_SMPL.py -scan_path=../results/test/pifuhd_final/recon/result_test_512.obj -save_path=../results/test/ipnet_results #SPML registration
python fit_SMPLD.py ../results/test/pifuhd_final/recon/result_test_512.obj ../results/test/ipnet_results #SMPLD registration

#run animations
python animations_IPNet.py ../results/test/pifuhd_final/recon/result_test_512.obj ../results/test/test_animations/ ../Anim_Seqs/seqs/ -smpl_pkl=../results/test/ipnet_results/result_test_512_smpl.pkl
#convert meshes to fbx animations using Blender Addon - https://github.com/neverhood311/Stop-motion-OBJ
