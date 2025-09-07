This code is for the study, "Fuzzy Features to Recognize Handwritten Text using Graph Neural Networks"

A Python-based project that combines fuzzy feature engineering with Graph Neural Networks (GNNs) to recognize handwritten text. The approach leverages the uncertainty-handling capability of fuzzy logic with the structural learning power of GNNs, making the model robust to noisy, irregular, and real-world handwriting samples.

(1) Features:
The node features have been understood in terms of fuzzy membership, which convert crisp feature vector to fuzzy based feature vector.
The fuzzy membership has been evaluated through probabilistic measure of training data and related rules further decide the boundary level features.
This work has been carried for node features in GNNs and allow GNNs to train as happen in traditional GNNs training. 
This work has been carried for important graph classification area as handwritten text recognition, where handwritten strokes are understood as graphs.

(2) Run config file for system for smooth run in current workspace;
Functions in C could be called as per need of problem (given in main branch of project);
Matlab based functions are given for recovery of drawing order and chain code computation.

(3) To use code:
Extract fuzzy based features from Author previous work,
a) Anuj Sharma, "A Combined Static and Dynamic Feature Extraction Technique to recognize handwritten digits", VJCS, vol. 2 (3), pp. 133-142, Springer
b) Anuj Sharma, “Recovery of Drawing order in Handwritten Digit Images”, ICIIP, pp 437-441, IEEE Explore

OR

use own features values directly (random based values provided in demo run)

(4) For smooth run:
run config files;
matlab files for features extraction and calculate respective fuzzy dependencies;
functions as per need of problem;
run main_fuzzy_hwr based on above files execution.

