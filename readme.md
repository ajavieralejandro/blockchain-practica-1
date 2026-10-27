# Práctica 1 — Introducción a Solidity

**Asignatura:** Tecnologías de Registro Distribuido y Blockchain  
**Alumno:** Javier Alejandro Amorosi  
**Máster Universitario en Ciberseguridad — Universidade de Vigo**

Este repositorio reúne el código y los informes de la primera práctica.

## Contenido

| Carpeta | Ejercicio | Contenido |
|---|---|---|
| `tutorial/` | 1. CryptoZombies | Código del tutorial de Solidity. |
| `contracts/` | 2. TokenContract | Contrato de compra de tokens con Ether y README con las pruebas realizadas. |
| `metamask/` | 3. MetaMask | Informe de la transferencia en Sepolia, con capturas. |
| `openzeppelin/` | 4. OpenZeppelin | Contrato `GLDToken.sol` y descripción de su funcionamiento. |

### Ejercicio 1 — CryptoZombies

Las lecciones amplían progresivamente el mismo proyecto. La carpeta `tutorial/` contiene la versión final del código trabajado, en lugar de repetir los archivos de cada etapa.

### Ejercicio 2 — TokenContract

Se amplió el contrato inicial para comprar tokens a un precio de 5 ETH por unidad. La compra comprueba el importe enviado y la disponibilidad de tokens del propietario.

El README de la carpeta recoge las pruebas realizadas en Remix VM.

### Ejercicio 3 — MetaMask

Se utilizó MetaMask en la red Sepolia para realizar un envío de ETH de prueba. El PDF incluye los datos de la transferencia y las capturas del saldo y del envío confirmado.

### Ejercicio 4 — OpenZeppelin

Se creó el token Gold (GLD) a partir de ERC20 de OpenZeppelin Contracts 5.0.2. El contrato permite transferir cantidades enteras de tokens y destruir tokens propios.
s.

## Entorno

- Remix IDE para compilar e interactuar con los contratos.
- Remix VM para las pruebas locales.
- MetaMask y Sepolia para las transferencias de ETH de prueba.

Las versiones de Solidity y las dependencias utilizadas se indican en los archivos de cada contrato.