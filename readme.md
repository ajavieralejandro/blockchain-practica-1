# Práctica 1 — Introducción a Solidity

**Asignatura:** Tecnologías de Registro Distribuido y Blockchain  
**Alumno:** Javier Alejandro Amorosi  
**Máster Universitario en Ciberseguridad — Universidade de Vigo**

**Repositorio:** https://github.com/ajavieralejandro/blockchain-practica-1

## Contenido

| Ejercicio | Archivos |
|---|---|
| 1. CryptoZombies | [Tutorial](Tutorial/) |
| 2. Compra de tokens | [TokenContract.sol](contracts/TokenContract.sol) · [Pruebas en Remix](contracts/debug.md) |
| 3. MetaMask y Sepolia | [Informe con capturas](Metamask/Ejercicio_3_MetaMask_Sepolia%20%282%29.pdf) |
| 4. OpenZeppelin | [zeppelin.sol — GLDToken](contracts/zeppelin.sol) |

## 1. CryptoZombies

El tutorial desarrolla el mismo juego de forma incremental. La entrega se organiza con una única versión final de cada archivo, sin repetir las versiones intermedias de las lecciones.

La carpeta `Tutorial/` reúne los archivos del proyecto. Actualmente falta incorporar el contenido de `index.html`, `ownable.sol`, `safemath.sol`, `zombieattack.sol`, `zombiefactory.sol`, `zombiefeeding.sol` y `zombiehelper.sol`, que se encuentran vacíos.

## 2. TokenContract

El propietario recibe 100 tokens al desplegar el contrato. La función `buyToken()` permite comprarlos a un precio de 5 ETH por unidad y comprueba el importe enviado y la disponibilidad de tokens. El pago debe ser múltiplo de 5 ETH.

La función `getContractBalance()` permite consultar el saldo de Ether del contrato en wei. Las pruebas realizadas en Remix VM se recogen en [contracts/debug.md](contracts/debug.md).

## 3. MetaMask y Sepolia

Se realizó un envío de 0,01 SepoliaETH. El [informe](Metamask/Ejercicio_3_MetaMask_Sepolia%20%282%29.pdf) incluye las capturas del saldo y del envío confirmado en MetaMask, así como los pasos que quedan por incorporar.

## 4. OpenZeppelin

El contrato `GLDToken`, guardado en `contracts/zeppelin.sol`, utiliza ERC20 de OpenZeppelin Contracts 5.0.2 para crear Gold (GLD).

El constructor asigna el suministro inicial a la cuenta que despliega el contrato. Las funciones `transferTokens()` y `burn()` permiten transferir cantidades enteras y destruir tokens propios. El token utiliza 18 decimales.

Para probarlo en Remix VM, se puede desplegar con 100 tokens y `Value = 0`, transferir 10 a otra cuenta y quemar 5 desde la cuenta inicial. Los resultados esperados son 85 GLD en la cuenta inicial, 10 en la destinataria y un suministro total de 95 GLD. Esta secuencia describe la prueba propuesta, no un registro de ejecución.

## 5. Trabajo en grupo

El contrato y la documentación del trabajo grupal están pendientes de incorporar a este repositorio tras su revisión conjunta.

## Entorno

- Remix IDE para compilar e interactuar con los contratos.
- Remix VM para las operaciones simuladas.
- MetaMask y Sepolia para el envío de ETH de prueba.

Las versiones de Solidity y las dependencias se indican en cada contrato. Las transacciones de Remix VM pertenecen a la red simulada y no aparecen en el explorador de Sepolia.
