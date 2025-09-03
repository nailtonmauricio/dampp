FROM php:7.4-apache

# Instalando dependências e extensões PHP
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    zip \
    npm \
    libonig-dev \
    libzip-dev \
    && docker-php-ext-install mbstring zip pdo pdo_mysql mysqli

# Instalando Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Ativando o módulo rewrite do Apache
RUN a2enmod rewrite

# Ajuste o diretório de trabalho conforme seu projeto
WORKDIR /var/www/html
