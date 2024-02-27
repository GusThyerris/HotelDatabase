<img width=100% src="https://capsule-render.vercel.app/api?type=waving&color=45b6fe&height=180&section=header&animation=twinkling"/>

# Banco de Dados de Reservas de Hotel

Este repositório contém código SQL para criar um banco de dados simples de reservas de hotel. O esquema do banco de dados inclui tabelas para clientes, quartos, funcionários, reservas e suas associações.

## Esquema do Banco de Dados

### Tabelas:

1. `cliente`: Armazena informações do cliente.
2. `quarto`: Representa os quartos disponíveis no hotel.
3. `funcionario`: Contém detalhes dos funcionários do hotel.
4. `reserva`: Gerencia as reservas feitas pelos clientes.
5. `funcionario_quarto`: Associa funcionários aos quartos que gerenciam.
6. `cliente_quarto`: Acompanha clientes e os quartos atribuídos a eles.
7. `reserva_cliente`: Conecta clientes às suas reservas.

## Consultas SQL

O repositório inclui várias consultas SQL para recuperar informações específicas do banco de dados:

1. **Reservas por Funcionário**: Recupera todas as reservas feitas por um funcionário específico, mostrando o ID da reserva, número do quarto e nome do funcionário.
2. **Reservas por Cliente**: Obtém todas as reservas feitas por um cliente específico, exibindo o ID da reserva, número do quarto e nome do cliente.
3. **Reservas Pagas**: Lista todas as reservas com status "pago", mostrando ID da reserva, número do quarto, nome do funcionário, nome do cliente e status.
4. **Reservas Pendentes**: Exibe todas as reservas com status "pendente", indicando ID da reserva, número do quarto, nome do funcionário, nome do cliente e status.

## Como Usar

1. Clone o repositório para a sua máquina local.
2. Importe o código SQL para o seu sistema de gerenciamento de banco de dados preferido.
3. Execute as consultas SQL para recuperar as informações desejadas do banco de dados.

## Notas de Uso

- Substitua os espaços reservados `[ID_DO_FUNCIONARIO]` e `[ID_DO_CLIENTE]` nas consultas SQL pelos IDs reais do funcionário e do cliente, respectivamente.

Sinta-se à vontade para modificar e estender o esquema do banco de dados e as consultas conforme suas necessidades.

