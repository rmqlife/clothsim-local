D="result-rand03-2"
D2="acc032"
python merge_dataset.py $D $D2
mv $D/*.py $D2
cd $D2
mkdir depth_sim
mv png/*depth*.png depth_sim
python ../add_bg.py depth_sim depth_sim_bg ../bg.png
python ../build_depth_feature.py depth_sim_bg depth_sim_bg
cd ..
rm -r $D
