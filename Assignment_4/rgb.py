from matplotlib import pyplot as plt
import matplotlib.image as mpimg

img = mpimg.imread('test.jpg')

R, G, B = img[:,:,0], img[:,:,1], img[:,:,2]
imgGray = (R+G+B)/3

plt.imshow(R, cmap='Reds')
plt.show()

plt.imshow(B, cmap='Blues')
plt.show()

plt.imshow(G, cmap='Greens')
plt.show()