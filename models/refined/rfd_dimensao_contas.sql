

with
    contas as (
        select *
        from {{ ref('trt_erp_contas') }}
    )

    , selecionar_colunas as (
        select
           pk_conta              
            , numero_conta            
            , tipo_conta
            , ts_abertura_conta
        from contas
    )

select *
from selecionar_colunas
