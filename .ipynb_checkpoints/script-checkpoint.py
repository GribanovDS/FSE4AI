import tensorflow as tf
from tensorflow import keras
from PIL import Image, ImageOps
import numpy as np

path_to_model = './model.h5'
path_to_image = './images.jpeg'

# Загрузите модель 
model = keras.models.load_model(path_to_model)

# Загрузите изображение
img = Image.open(path_to_image)

# Измените размер изображения
img = img.resize((128, 128))

# Преобразуйте изображение в numpy-массив
img_array = np.array(img)

# Добавьте размер пакета (batch size)
img_array = np.expand_dims(img_array, axis=0)

# Нормализируйте изображение
img_array = np.array(img_array) / 255.0

# Используйте модель для классификации
prediction = model.predict(img_array)

# Выведите результат
if prediction[0][0] > prediction[0][1]:
    print("Это кошка")
else:
    print("Это собака")
