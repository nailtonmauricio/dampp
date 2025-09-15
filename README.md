# 🚀 DAMPP – Ambiente de Desenvolvimento com Docker

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![PHP](https://img.shields.io/badge/PHP-7.4-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-5.7-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Composer](https://img.shields.io/badge/Composer-2.8-885630?style=for-the-badge&logo=composer&logoColor=white)
![NodeJS](https://img.shields.io/badge/Node.js-12.22-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)

---

### 📌 Descrição
Este projeto é destinado a **programadores iniciantes** que buscam uma alternativa ao uso de softwares como **XAMPP** ou **WAMP**, utilizando uma estrutura mais moderna baseada em **containers Docker**.

A ideia é fornecer um **ambiente de desenvolvimento modularizado**, mais próximo de cenários reais de produção.

📂 Estrutura do Projeto
.  
├── docker-compose.yml  
├── Dockerfile  
├── .env-exemple  
├── app/               # Código-fonte do projeto  
└── README.md


O projeto conta com:
- **Dockerfile** que instala as principais dependências do PHP
- **Composer** pré-instalado
- **Reescrita do Apache2 habilitada**
- Containers independentes para cada serviço

---

### 🛠 Tecnologias Utilizadas

| Tecnologia   | Versão   |
|--------------|----------|
| PHP          | 7.4.33   |
| MySQL        | 5.7.44   |
| PhpMyAdmin   | 5.2.2    |
| Composer     | 2.8.11   |
| Node.js      | 12.22.12 |
| NPM          | 7.5.2    |

---

### ⚙️ Como Utilizar

#### 1. Clone o repositório e defina o nome do projeto
```bash
git clone --recurse-submodules https://github.com/nailtonmauricio/dampp.git new_project_name
```

#### 2. Configure as variáveis de ambiente
```bash
cp .env-exemple .env
```
No arquivo **.env**, configure:  
**MYSQL_DATABASE →** Nome do banco de dados  
**MYSQL_ROOT_PASSWORD →** Senha do root (usada também no PhpMyAdmin)

#### 3. Suba os containers
```bash
docker compose up -d
```
---
🌐 Acesso ao Projeto

- Aplicação (container app):
👉 http://localhost:80  
- PhpMyAdmin:
👉 http://localhost:8081
- User: `root`  
- Password: definida em `MYSQL_ROOT_PASSWORD` no .env

---
🤝 Contribuição

Contribuições são super bem-vindas! 🎉

Faça um fork do projeto

Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)

Faça o commit das alterações (`git commit -m 'Adiciona nova feature'`)

Envie para o repositório remoto (`git push origin feature/nova-feature`)

Abra um Pull Request

---
📄 Licença

Este projeto está sob a licença MIT.  
Você pode usá-lo, modificar e distribuir livremente.