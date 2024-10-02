# Proyecto de Despliegue en S3 y CloudFront

Este proyecto tiene como objetivo automatizar el despliegue de un archivo HTML en un bucket de Amazon S3 y actualizar la caché de CloudFront utilizando **GitHub Actions**. El archivo HTML que se desplegará mostrará un mensaje simple: **"Hola Lu"**.

## Estructura del Proyecto

- `index.html`: Archivo HTML que contiene el mensaje "Hola Lu".
- `.github/workflows/deploy.yml`: Workflow de GitHub Actions que automatiza el despliegue.

## Requisitos Previos

Antes de ejecutar el pipeline de GitHub Actions, asegúrate de cumplir con los siguientes requisitos:

1. **Cuenta de AWS**: Necesitas una cuenta de AWS con permisos para acceder a S3 y CloudFront.
2. **Bucket de S3**: Debes tener un bucket de S3 creado para almacenar los archivos.
3. **Distribución de CloudFront**: Necesitas una distribución de CloudFront configurada.
4. **Configurar Secrets en GitHub**:
   - `AWS_ACCESS_KEY_ID`: Tu clave de acceso de AWS.
   - `AWS_SECRET_ACCESS_KEY`: Tu clave secreta de AWS.
   - `CLOUDFRONT_DISTRIBUTION_ID`: El ID de la distribución de CloudFront donde se invalidará la caché.
   - `S3_BUCKET_NAME`: El nombre del bucket S3 donde se subirán los archivos.

## Pasos para Desplegar

1. **Clonar el repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/deploy-s3-cloudfront.git
   cd deploy-s3-cloudfront
