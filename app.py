from flask import Flask, request, render_template
#import pickle
import numpy as np
from tensorflow.keras.models import load_model

app = Flask(__name__)

model = load_model('model_ku')

@app.route('/')
def index():
    return render_template('index.html', kepuasan=0)

@app.route('/predict', methods=['POST'])
def predict():
    provinsi, media_internet, sharing, kulasync, kulsync, kecepatan, durasi, segmenwaktu, biayabulanan, kendala = [x for x in request.form.values()]
    data = []

    # Encode masukan provinsi
    dt_prov = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    dt_prov[int(provinsi)] = 1
    data.extend(dt_prov)

    # Encode masukan media internet
    dt_media = [0, 0, 0]
    dt_media[int(media_internet)] = 1
    data.extend(dt_media)

    # Encode masukan sharing
    dt_sharing = [0, 0] 
    dt_sharing[int(sharing)] = 1
    data.extend(dt_sharing)

    # Encode masukan kulasync
    dt_kulasync = [0, 0, 0, 0] 
    dt_kulasync[int(kulasync)] = 1
    data.extend(dt_kulasync)

    # Encode masukan kulsync
    dt_kulsync = [0, 0, 0] 
    dt_kulsync[int(kulsync)] = 1
    data.extend(dt_kulsync)

    # Encode masukan kecepatan
    dt_kecepatan = [0, 0, 0, 0]
    dt_kecepatan[int(kecepatan)] = 1
    data.extend(dt_kecepatan)

    # Encode masukan durasi
    dt_durasi = [0, 0, 0]
    dt_durasi[int(durasi)] = 1
    data.extend(dt_durasi)

    # Encode masukan segmenwaktu
    dt_segmenwaktu = [0, 0, 0, 0]
    dt_segmenwaktu[int(segmenwaktu)] = 1
    data.extend(dt_segmenwaktu)

    # Encode masukan biayabulanan
    dt_biayabulanan = [0, 0, 0]
    dt_biayabulanan[int(biayabulanan)] = 1
    data.extend(dt_biayabulanan)

    # Encode masukan kendala
    dt_kendala = [0, 0, 0, 0]
    dt_kendala[int(kendala)] = 1
    data.extend(dt_kendala)

    prediction = model.predict([data])
    #[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0]
    output = np.round(prediction[0], 0).astype(int)
    class_dict = {0:1, 1:2, 2:3}
    tingkat_kepuasan = class_dict[np.argmax(output)]
    #print(key_list[position])
    #output = prediction[0]
    print(tingkat_kepuasan)

    return render_template('index.html', kepuasan=tingkat_kepuasan)


if __name__ == '__main__':
    app.run(debug=True)