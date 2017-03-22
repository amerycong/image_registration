# image_registration

To better understand image processing with soley a DSP background, I attempted to identify the pixel shifts in the rows and columns between any 2 images in a set of 5 MR scans of grapefruits. Using the Fourier Shift Property, we aim to obtain the phase correlation in order to determine the translational offset through analysis of the cross power spectrum.  By taking the FFT along the two dimensions of any two images in the set, we can compute the phase correlation betweenthe rows and columns of each image which is used to calculate the displacement from one image to the other. Due to the increased performance of phase correlation over geometric spatial correlation in terms of computation speed, we also observe the accuracy of this method compared to the actual pixel shift values.

Some more details and results in write-up pdf.
