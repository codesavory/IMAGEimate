#todo: add preprocess image

#run PIFUHD
#Change CUDA to 'cpu' to fit pifuHD model pifuHd.apps.recon.py file line 145
#add save plain mesh to recon.py
python -m pifuhd.apps.simple_test -i=./input/test/ -o=./results/test -c=./checkpoints/pifuhd.pt

#pre-process IPNet
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

#run IPNet - sometimes the SMPL+D registration is better for lower epochs. It recalculated SMPL+D and optimizes with IPNet values
python test_IPNet.py ../results/test/pifuhd_final/recon/result_test_512.obj experiments/IPNet_p5000_01_exp_id01/checkpoints/checkpoint_epoch_249.tar ../results/test/ipnet_results -m IPNet -batch_points=10000
python fit_SMPL_IPNet.py ../results/test/ipnet_results/body.ply ../results/test/ipnet_results/full.ply ../results/test/ipnet_results/parts.npy  ../results/test/ipnet_results/cent.npy ../results/test/ipnet_results/

#run animations given SMPL+Motion Capture = Calculates SMPL+D each frame
python animations_IPNet.py ../results/test/pifuhd_final/recon/result_test_512.obj ../results/test/test_animations/ ../Anim_Seqs/seqs/ -smpl_pkl=../results/test/ipnet_results/result_test_512_smpl.pkl
#convert meshes to fbx animations using Blender Addon - https://github.com/neverhood311/Stop-motion-OBJ
