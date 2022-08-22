clc;
clear;
close all;
load('ECG_sample_noisy.mat')
fs = 250;
pan_tompkin(ECG2,fs);