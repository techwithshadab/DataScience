# 1x1 Convolution

![](https://raw.githubusercontent.com/iamaaditya/iamaaditya.github.io/master/images/conv_arithmetic/full_padding_no_strides_transposed_small.gif)

Used to mix and match channels

# Global Average Pooling

Average pooling with size equal to that of kernel to constrain it to a single value per channel. Generally used at the output layer in fully convolutional networks

# Receptive Field

The amount of the image the network looks at. It increases as the depth of the network increases

# Batch Normalization

Used to normalize the input to every layer

![](https://miro.medium.com/max/810/1*Hiq-rLFGDpESpr8QNsJ1jg.png)

# Dropout

Regularization technique to improve the capability of a network by giving the power of an ensemble of networks

![](https://qph.fs.quoracdn.net/main-qimg-94a1d5e149ab864bfa20ef7e5242777d.webp)

# Image Augmentation

![](https://raw.githubusercontent.com/aleju/imgaug-doc/master/readme_images/small_overview/noop_image.jpg)

![](https://raw.githubusercontent.com/aleju/imgaug-doc/master/readme_images/examples_grid.jpg)



# L1 and L2 regularization

![](https://miro.medium.com/max/2546/1*zMLv7EHYtjfr94JOBzjqTA.png)

# Label Smoothing

Have soft labels instead of hard labels

![](https://image.slidesharecdn.com/aimeetgans-170110113744/95/generative-adversarial-networks-and-their-applications-39-638.jpg)

# CNN architectures

**Lenet-5(1998)**

![](https://miro.medium.com/max/1000/0*MU7G1aH1jw-6eFiD.png)

Tanh activation function used

5x5 convolutions used

Limited use due to lack of computational power

**Alexnet(2012)**

![](https://www.learnopencv.com/wp-content/uploads/2018/05/AlexNet-1.png)

Stood 1st in Imagenet Challenge in 2012 reducing the top-5 error from 26% to 15.3%

Relu was introduced

11x11, 5x5, 3x3 convolutions used

Used dropout regularization

Overlapping pooling used i.e 3x3 pooling with stride 2



**VggNet(2014)**

![](https://www.pyimagesearch.com/wp-content/uploads/2017/03/imagenet_vgg16.png)

Only 3x3 convolutions used

Simple architecture followed throughout

Was used as a feature extractor in many use cases due to its effectiveness

**Inception(2014) **

![](https://www.pyimagesearch.com/wp-content/uploads/2017/03/imagenet_inception_module.png)

![](https://miro.medium.com/max/1750/0*rbWRzjKvoGt9W3Mf.png)

Multiple versions of the architecture are released Inceptionv1, Inceptionv2, Inceptionv3

Has multiple paths in a block and hence can act as a multi-feature extractor

**Resnet(2015)**

![](https://www.pyimagesearch.com/wp-content/uploads/2017/03/imagenet_resnet_identity.png)

Implemented residual connections

Helped in training deeper neural networks

![](https://miro.medium.com/max/1750/0*pkrso8DZa0m6IAcJ.png)



**DenseNet(2016)**

Inspired from Resnet

Connections from every layer to every other layer in a block

![](https://miro.medium.com/max/5164/1*_Y7-f9GpV7F93siM1js0cg.jpeg) 