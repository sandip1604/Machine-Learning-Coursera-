##########  Neural Network learning  #############

IN THIS ASSIGNMENT We will be training Neural Network with back propogation for hand written digit recognition.. WHOSE BRIEF DETAILS ARE AS FOLLOW

 Neural Network is trained using back propogation to recognise the handwritten digits from 0 to 9. 

1. Sigmoid function is used as an activation fucntion. 
2. neurons weights are learned using back propogation. 

Training set size: 5000 training example (20X20 pixel per image)
feature vector: 400 dimensional feature vector
data matrix: 5000x400 dimensional matrix

Neural network architecture: 400-25-10

** AFTER TAINING neural network, MODEL IS ABLE TO PREDICT THE PROBABILITY OF THE EXAMPLE TO BELONG TO EACH CLASS. ***

For more detailed explaination on goal and steps refer the ex4.pdf in 'Neural Networks' folder

files provided by instructer:

ex4.m - Octave/MATLAB script that steps you through the exercise
ex4data1.mat - Training set of hand-written digits
ex4weights.mat - Neural network parameters for exercise 4
submit.m - Submission script that sends your solutions to our servers
displayData.m - Function to help visualize the dataset
fmincg.m - Function minimization routine (similar to fminunc)
sigmoid.m - Sigmoid function
computeNumericalGradient.m - Numerically compute gradients
checkNNGradients.m - Function to help check your gradients
debugInitializeWeights.m - Function for initializing weights


files written by me are:
sigmoidGradient.m - Compute the gradient of the sigmoid function
randInitializeWeights.m - Randomly initialize weights
nnCostFunction.m - Neural network cost function