#!/bin/bash
rm -r dataset/kinect/depth
rm -r dataset/kinect/color
rm -r dataset/kinect/scene
rm -r dataset/kinect/fragments

rm -r frames
python3 sensors/azure_kinect_recorder.py --output record.mkv
python3 sensors/azure_kinect_mkv_reader.py --input record.mkv --output frames

cp -r  frames/* dataset/kinect

python3 run_system.py config/kinect.json --make --register --refine --integrate
cd dataset/kinect/scene
meshlab integrated.ply

