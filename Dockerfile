# Use uma imagem base do Debian
FROM debian:buster

# Instale o Python e o pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências do Python
RUN pip3 install --no-cache-dir -r requirements.txt

# Copie o restante do código fonte para o diretório de trabalho
COPY . .

# Especifique o comando padrão a ser executado quando o contêiner for iniciado
CMD ["python3", "seu_script.py"]
