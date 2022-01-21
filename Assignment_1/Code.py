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

plt.imshow(imgGray, cmap='gray')
plt.show()


binary = (R+G+B)/3
for i in range(4526):
    for j in range(10000):
        if binary[i,j]>10:
            binary[i,j]=1
        else:
            binary[i,j]=0

plt.imshow(binary, cmap='gray')
plt.show()

img_new = binary + imgGray
plt.imshow(img_new, cmap='gray')
plt.show()

gray_20 = 20 + imgGray
plt.imshow(gray_20, cmap='gray')
plt.show()
