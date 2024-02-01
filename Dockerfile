FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# dünya adında bir ortam değişkeni oluştur ve değerini World olarak ata
ENV NAME World

EXPOSE 5000
# Container başlatıldığında app.py dosyasını çalıştır ve 5000 portunu dinle
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]