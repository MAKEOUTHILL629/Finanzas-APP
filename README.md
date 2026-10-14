# Finanzas APP - Monorepo

Monorepo que orquesta los servicios del sistema de gestión financiera personal y familiar.

## 📁 Estructura del Proyecto

Este repositorio actúa como proyecto sombrilla (monorepo con submódulos git) para integrar el backend y frontend:

```text
Finanzas-APP/
├── finanzas/         # Submódulo: Backend (Play/Scala + migración NestJS)
├── finanzas-mf/      # Submódulo: Frontend (Angular Microfrontend)
├── docker-compose.yml # Orquestación Docker para ejecución integrada
├── Makefile          # Comandos de construcción y despliegue rápido
└── README.md
```

## 🔗 Repositorios Individuales

Cada componente mantiene su propio ciclo de vida y repositorio en GitHub:
- **Backend (`finanzas`):** [https://github.com/MAKEOUTHILL629/finanzas](https://github.com/MAKEOUTHILL629/finanzas)
- **Frontend (`finanzas-mf`):** [https://github.com/MAKEOUTHILL629/finanzas-mf](https://github.com/MAKEOUTHILL629/finanzas-mf)

## 🚀 Clonar el Proyecto Completo

Para clonar este monorepo junto con todos sus submódulos y dependencias:

```bash
git clone --recurse-submodules <URL_DE_ESTE_REPOSITORIO>
```

Si ya lo clonaste sin submódulos, inicialízalos con:

```bash
git submodule update --init --recursive
```

## 🐳 Ejecución con Docker

Para levantar todos los servicios de forma local:

```bash
# Con Make
make up

# O con Docker Compose directamente
docker-compose up -d
```
