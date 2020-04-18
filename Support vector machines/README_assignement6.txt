##########  Support vector Machines  #############

IN THIS ASSIGNMENT We will be training Support Vector Machines classifiers to classifiy spam emails from nonspam ones. WHOSE BRIEF DETAILS ARE AS FOLLOW

In the first half of this exercise, you will be using support vector machines (SVMs) with various example 2D datasets. Experimenting with these datasets will help you gain an intuition of how SVMs work and how to use a Gaussian
kernel with SVMs. In the next half of the exercise, you will be using support vector machines to build a spam classifier. 

#########       Gaussian Kernel    ###############

To finnd non-linear decision boundaries with the SVM, we need to first implement a Gaussian kernel. You can think of the Gaussian kernel as a similarity function that measures the \distance" between a pair of examples,
(x(i); x(j)). The Gaussian kernel is also parameterized by a bandwidth parameter, 'sigma'  , which determines how fast the similarity metric decreases (to 0)
as the examples are further apart.

##########        Spam classifier      ####################

Steps involved in making a spam classifier

1. Preprocessing Emails: 
		In processEmail.m, we have implemented the following email preprocessing and normalization steps:

		• Lower-casing: The entire email is converted into lower case, so that captialization is ignored (e.g., IndIcaTE is treated the same as Indicate).
		• Stripping HTML: All HTML tags are removed from the emails. Many emails often come with HTML formatting; we remove all the HTML tags, so that only the content remains.
		• Normalizing URLs: All URLs are replaced with the text \httpaddr".
		• Normalizing Email Addresses: All email addresses are replacedwith the text \emailaddr".
		• Normalizing Numbers: All numbers are replaced with the text "number".
		• Normalizing Dollars: All dollar signs ($) are replaced with the text "dollar".
		• Word Stemming: Words are reduced to their stemmed form. For example, "discount", "discounts", "discounted" and "discounting" are all replaced with "discount". Sometimes, the Stemmer actually strips oFF additional characters from the end, so "include", "includes", "included", and  		"including" are all replaced with "includ".
		• Removal of non-words: Non-words and punctuation have been removed. All white spaces (tabs, newlines, spaces) have all been trimmed to a single space character.

2. Vocablary List:
		After preprocessing the emails, we have a list of words (e.g., Figure 9) for each email. The next step is to choose which words we would like to use in our classifier and which we would want to leave out. For this exercise, we have chosen only the most frequently occuring words as our set 		of words considered (the vocabulary list).

3. Extracting Features from Emails:
		For this exercise, you will be using n = # words in vocabulary list. Specifically, the feature xi belongs to {0,1} for an email corresponds to whether the i-th word in the dictionary occurs in the email. That is, xi = 1 if the i-th word is in the email and xi = 0 if the i-th word is not present in the email.

4. Training SVM for the classification
		Svm is trainned using Gaussian Kernel.

** AFTER TAINING SVM , MODEL IS ABLE TO PREDICT if the mail is likely to be a spam or the otherwise. ***

Train accuracy: 99.8% (4000 examples)
Test accuracy: 98.5% (1000 examples)

For more detailed explaination on goal and steps refer the ex6.pdf in 'Support Vector Machines' folder

files provided by instructer:

ex6.m - Octave/MATLAB script for the rst half of the exercise
ex6data1.mat - Example Dataset 1
ex6data2.mat - Example Dataset 2
ex6data3.mat - Example Dataset 3
svmTrain.m - SVM training function
svmPredict.m - SVM prediction function
plotData.m - Plot 2D data
visualizeBoundaryLinear.m - Plot linear boundary
visualizeBoundary.m - Plot non-linear boundary
linearKernel.m - Linear kernel for SVMs
ex6 spam.m - Octave/MATLAB script for the second half of the exercise
spamTrain.mat - Spam training set
spamTest.mat - Spam test set
emailSample1.txt - Sample email 1
emailSample2.txt - Sample email 2
spamSample1.txt - Sample spam 1
spamSample2.txt - Sample spam 2
vocab.txt - Vocabulary list
getVocabList.m - Load vocabulary list
porterStemmer.m - Stemming function
readFile.m - Reads a file into a character string
submit.m - Submission script that sends your solutions to our servers


files written by me are:

 gaussianKernel.m - Gaussian kernel for SVM
 dataset3Params.m - Parameters to use for Dataset 3
 processEmail.m - Email preprocessing
 emailFeatures.m - Feature extraction from emails