FROM python:3.8



MAINTAINER Ashwin Prakash Nalwade



WORKDIR /imgtrain



# COPY './requirements.txt' .



# RUN apt-get install libgtk2.0-dev pkg-config -yqq 



RUN pip install --upgrade pip



RUN pip install Flask 



RUN pip install future nose mock coverage numpy flake8 



RUN pip install torch==1.7.0+cpu torchvision==0.8.1+cpu torchaudio==0.7.0 -f https://download.pytorch.org/whl/torch_stable.html



COPY . .



CMD ["python", "main.py -a alexnet --lr 0.01 data"]
