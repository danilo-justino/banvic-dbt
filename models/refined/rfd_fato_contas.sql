

with
    contas as (
        select *
        from {{ ref('trt_erp_contas') }}
    )

    , selecionar_colunas as (
        select
           pk_conta              
            , fk_cliente
            , fk_agencia
            , fk_colaborador
            , saldo_total
            , saldo_disponivel
            , ts_ultimo_lancamento
        from contas
    )

select *
from selecionar_colunas
