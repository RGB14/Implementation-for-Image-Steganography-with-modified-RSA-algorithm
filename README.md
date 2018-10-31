# Implementation-for-Image-Steganography-with-modified-RSA-algorithm
**Abstract:** Image steganography is implemented by replacing image pixels with cipher pixels to hide the existence of the message. To enhance the security, cryptographic algorithm, RSA, has been modified into symmetric keying system to encrypt and decrypt the message into cipher text and vice versa solely for this purpose. The sender will encrypt the message with a key and then embed the cipher text into an image and send the image object via any transmission medium like internet along with the key to the receiver, so that the receiver can extract the cipher text from the image and then decrypt by the key that the sender have sent. The result was satisfactory and fulfilled the purpose but there arose many major issues like, visibility of the cipher pixel in case for low resolution image; data corruption of the cipher text due to noise; limitation of grayscale image only; sender have to send a couple of image for comparison of the pixel data etc. However, noise problem have been challenged with the help of median filter but still there remains many scope to establish this algorithm into a better efficient and optimized one.

## Functionality of files (requires Matlab)

crypt.m , dec2bin.m ,  intialize.m , 
___
RSA algorithm has been developed by Shaun Gomez and imported from the following:

> https://www.mathworks.com/matlabcentral/fileexchange/38439-implementation-of-rsa-algorithm
___
This algorithm has been modified for the purpose of Image Steganography and symmetric key system

rsa_encrypt.m
___
> Encrypts the message from terminal input of Matlab and output is a file generated of its corresponding cipher text in ASCII format

