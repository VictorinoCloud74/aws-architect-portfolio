# 🌐 Semana 1: VPC Custom y Servidor Web Automatizado

## 🎯 Objetivo
Diseñar una infraestructura de red personalizada que cumpla con el principio de aislamiento, separando recursos públicos de privados, y automatizando el despliegue de un servidor web.

## 🏗️ Componentes de la Arquitectura
* **VPC (10.0.0.0/16):** Mi espacio privado en la nube de AWS.
* **Public Subnet (10.0.1.0/24):** Zona con acceso a internet para el servidor web.
* **Internet Gateway (IGW):** El puente que permite la comunicación bidireccional con el mundo exterior.
* **Security Group:** Configurado como firewall estatal permitiendo solo `Puerto 22 (SSH)` para administración y `Puerto 80 (HTTP)` para usuarios.

## 🚀 Automatización con User Data
En este laboratorio utilicé un script de Bash para evitar la configuración manual de la instancia. El script realiza:
1. Actualización de repositorios.
2. Instalación de Nginx.
3. Personalización del index HTML.

> **Logro:** He logrado que la infraestructura sea "desechable" y reproducible. Si borro la EC2 y lanzo otra con el mismo script, el servicio vuelve a estar arriba en segundos.
