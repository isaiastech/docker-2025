FROM php:8.0-apache

# Define o diretório de trabalho
WORKDIR /var/www/html

# Instala dependências e extensões PHP necessárias
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    && docker-php-ext-install pdo pdo_mysql zip gd mbstring xml curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copia os arquivos da aplicação para o container
COPY . .

# Define permissões apropriadas
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expõe a porta 80
EXPOSE 80

# Habilita o módulo rewrite do Apache
RUN a2enmod rewrite

# Reinicia o Apache para aplicar as mudanças
CMD ["apache2-foreground"]
