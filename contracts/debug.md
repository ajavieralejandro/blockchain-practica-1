# Ejercicio 2 — TokenContract

**Autor:** Javier Alejandro Amorosi  
**Entorno de pruebas:** Remix VM  
**Archivo:** `TokenContract.sol`

## Objetivo e implementación

Se amplió el contrato proporcionado para permitir la compra de tokens mediante Ether. El propietario recibe inicialmente 100 tokens y cada token cuesta 5 ETH.

La función `buyToken()` es `payable` y realiza las siguientes comprobaciones:

- El pago debe ser de al menos 5 ETH.
- El importe debe ser múltiplo de 5 ETH, evitando pagos con cantidades sobrantes.
- El propietario debe disponer de suficientes tokens.

Si las condiciones se cumplen, los tokens se descuentan del propietario y se asignan al comprador. El Ether recibido queda almacenado en el contrato. Si alguna validación falla, la operación se revierte.

## Pruebas realizadas

### Pago insuficiente

Se llamó a `buyToken()` enviando 0 wei. El contrato rechazó la operación con el mensaje:

`Minimo 5 ETH por token`

Este resultado verifica el control de pago mínimo.

### Compra válida

Se llamó a `buyToken()` desde una cuenta distinta de la propietaria, enviando 10 ETH.

| Dato | Resultado registrado en Remix |
|---|---|
| Estado | `1 — Transaction mined and execution completed` |
| Función | `TokenContract.buyToken()` |
| Importe enviado | `10000000000000000000 wei` (10 ETH) |
| Bloque | `12` |
| Gas utilizado | `51815` |
| Comprador | `0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2` |
| Contrato | `0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B` |
| Hash de transacción | `0x902d7992abe5803f5dfc21865d2ea0bc037e6890280f2bc911c809fd59b5b15c` |

La transacción se completó correctamente. Según la lógica implementada, 10 ETH corresponden a 2 tokens. Los saldos esperados tras esta primera compra son 2 tokens para el comprador y 98 para el propietario; su consulta directa no está incluida en esta evidencia.

Las pruebas se ejecutaron en una blockchain simulada de Remix VM. Los hashes registrados no corresponden a transacciones de Sepolia y no son consultables en su explorador.

## Comprobaciones pendientes

- Consultar los saldos de tokens del comprador y del propietario.
- Verificar la función de consulta del saldo de Ether del contrato, requerida por el enunciado.
- Probar el rechazo por falta de tokens del propietario.
- Probar el rechazo de un importe que no sea múltiplo de 5 ETH.