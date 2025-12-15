![CI - Continuous Integration](https://github.com/AleBueso/Fase-2-Conceptos-Avanzados-de-SO/actions/workflows/ci.yml/badge.svg)
![Docker Container Action Demo](https://github.com/AleBueso/Fase-2-Conceptos-Avanzados-de-SO/actions/workflows/docker-container-action.yml/badge.svg)
![System Automation Demo](https://github.com/AleBueso/Fase-2-Conceptos-Avanzados-de-SO/actions/workflows/system-automation.yml/badge.svg)

# Fase 2 – Conceptos avanzados de SO con CI/CD y Docker

Repositorio académico para la fase 2 de Sistemas Operativos.  
Incluye:

- Aplicación web simple en **Node.js/Express** con tests unitarios.
- Workflows de **GitHub Actions** para:
  - Integración continua (tests y build en 3 sistemas operativos).
  - Ejecución de un contenedor **Docker** y monitoreo de recursos.
  - Automatización de tareas de sistema en **Linux** y **Windows** mediante scripts.

---

## 1. Requisitos

Para ejecutar el proyecto de forma local:

- Node.js 18 o 20
- npm
- Opcional: Docker (para probar el contenedor localmente)

Para CI/CD:

- Repositorio en GitHub.
- GitHub Actions habilitado.
- Secreto `SECRET_EXAMPLE` configurado en  
  *Settings → Secrets and variables → Actions*.

---

## 2. Ejecutar la aplicación localmente

```bash
# Clonar el repo
git clone https://github.com/AleBueso/Fase-2-Conceptos-Avanzados-de-SO.git
cd Fase-2-Conceptos-Avanzados-de-SO

# Instalar dependencias
npm install

# Ejecutar tests
npm test

# Levantar la app
npm start
