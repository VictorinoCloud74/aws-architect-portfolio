#!/bin/bash
# Actualizar el sistema
apt-get update -y
apt-get upgrade -y

# Instalar Nginx (servidor web)
apt-get install nginx -y

# Iniciar y habilitar Nginx
systemctl start nginx
systemctl enable nginx

# Crear una página personalizada para tu portafolio
echo "<h1>Mi Primera VPC en AWS - Desplegado por [Victor Matallana Ortega]</h1><p>Arquitectura
