FROM python:3.10.12

WORKDIR /app

# Copia o arquivo requirements.txt para o diretório /app no contêiner
COPY requirements.txt /app/requirements.txt

# Para instalar as dependências indicadas no requirements
RUN python -m pip install -r requirements.txt

COPY . /app

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]

