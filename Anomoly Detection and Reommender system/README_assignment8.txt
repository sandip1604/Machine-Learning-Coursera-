##########  Anomaly Detection and Recommender systems  #############

IN THIS ASSIGNMENT We will be training model for anaomly detection for failed servers ona network and recommenders system for movies using collaborative filtering. WHOSE BRIEF DETAILS ARE AS FOLLOW

#########   Anomoly Detection   ################

We will implement an anomaly detection algorithm to detect anomalous behavior in server computers. The features measure the throughput (mb/s) and latency (ms) of response of each server. We suspect that the vast majority of these examples are \normal" (non-anomalous) examples of the servers operating normally, but there might also be some examples of servers acting anomalously within this dataset.

We will use a Gaussian model to detect anomalous examples in your dataset.

We will compute the resulting F1 score by computing how many examples the current
threshold classifies correctly and incorrectly.

########   Recommender Systems  #################

will implement the collaborative filtering learning algorithm and apply it to a dataset of movie ratings. This dataset consists of ratings on a scale of 1 to 5. The dataset has 943 users, and 1682 movies.

After We have finished implementing the collaborative filtering cost function
and gradient, we can now start training your algorithm to make movie
13
recommendations for yourself. In the next part of the ex8 cofi.m script,
we can enter your own movie preferences, so that later when the algorithm
runs, you can get your own movie recommendations! We have filled out
some values according to our own preferences, but you should change this
according to your own tastes. The list of all movies and their number in the
dataset can be found listed in the file movie_idx.txt.


For more detailed explaination on goal and steps refer the ex7.pdf in 'Anomaly Detection and Recommender systems' folder

files provided by instructer:

ex8.m - Octave/MATLAB script for first part of exercise
ex8 cofi.m - Octave/MATLAB script for second part of exercise
ex8data1.mat - First example Dataset for anomaly detection
ex8data2.mat - Second example Dataset for anomaly detection
ex8 movies.mat - Movie Review Dataset
ex8 movieParams.mat - Parameters provided for debugging
multivariateGaussian.m - Computes the probability density function
for a Gaussian distribution
visualizeFit.m - 2D plot of a Gaussian distribution and a dataset
checkCostFunction.m - Gradient checking for collaborative filtering
computeNumericalGradient.m - Numerically compute gradients
fmincg.m - Function minimization routine (similar to fminunc)
loadMovieList.m - Loads the list of movies into a cell-array
movie ids.txt - List of movies
normalizeRatings.m - Mean normalization for collaborative filtering
submit.m - Submission script that sends your solutions to our servers


files written by me are:

 estimateGaussian.m - Estimate the parameters of a Gaussian distribution with a diagonal covariance matrix
 selectThreshold.m - Find a threshold for anomaly detection
 cofiCostFunc.m - Implement the cost function for collaborative filtering