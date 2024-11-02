FROM python:3.7-slim
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app
COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements.txt
    #pip install tensorflow==2.4.0 keras==2.4.3 scikit-learn

CMD ["python", "experiments.py", "-t", "caltech101", "-l", "l21", "-q", "1", "-r", "5", "-m", "10", "-z", "1"]
