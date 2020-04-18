########## K-Means and Principal Component Analysis  #############

IN THIS ASSIGNMENT We will be using k-means and PCA to compress the image dataset. WHOSE BRIEF DETAILS ARE AS FOLLOW

In this exercise, you will implement the K-means clustering algorithm and apply it to compress an image. In the second part, you will use principal component analysis to find a low-dimensional representation of face images.


For more detailed explaination on goal and steps refer the ex7.pdf in 'K-means and Principal Component Analysis' folder

######   K-Means  ########

We will use the K-means algorithm for image compression by reducing the number of colors that occur in an image to only those that are most common in that image. Each pixel is represented as three 8-bit unsigned integers (ranging from 0 to 255) that specify the red, green and blue intensity values. This encoding is often refered to as the RGB encoding. Our image contains thousands of colors, and in this part of the exercise, you will reduce the number of colors to 16 colors.

######  Principal Component Analysis   #########

In this exercise, you will use principal component analysis (PCA) to perform dimensionality reduction. Here we will run PCA on faces to reduce the dimension of the large image dataset

files provided by instructer:

ex7.m - Octave/MATLAB script for the first exercise on K-means
ex7 pca.m - Octave/MATLAB script for the second exercise on PCA
ex7data1.mat - Example Dataset for PCA
ex7data2.mat - Example Dataset for K-means
ex7faces.mat - Faces Dataset
bird small.png - Example Image
displayData.m - Displays 2D data stored in a matrix
drawLine.m - Draws a line over an exsiting figure
plotDataPoints.m - Initialization for K-means centroids
plotProgresskMeans.m - Plots each step of K-means as it proceeds
runkMeans.m - Runs the K-means algorithm
submit.m - Submission script that sends your solutions to our servers


files written by me are:

 pca.m - Perform principal component analysis
 projectData.m - Projects a data set into a lower dimensional space
 recoverData.m - Recovers the original data from the projection
 findClosestCentroids.m - Find closest centroids (used in K-means)
 computeCentroids.m - Compute centroid means (used in K-means)
 kMeansInitCentroids.m - Initialization for K-means centroids