

with
    clientes as (
        select *
        from {{ ref('trt_erp_clientes') }}
    )

    , localidades as (
        select *
        from {{ ref('trt_erp_localidades') }}
    )

    , clientes_enriquecidos as (
        select
            clientes.pk_cliente
            , clientes.nome_cliente
            , clientes.email_cliente
            , clientes.tipo_cliente
            , clientes.ts_inclusao
            , clientes.cpfcnpj_cliente
            , clientes.data_nascimento_cliente
            , clientes.endereco_cliente
            , clientes.cep_cliente 
            , localidades.cidade  as cidade_cliente
            , localidades.uf      as uf_clientes
        from clientes 
        left join localidades on clientes.fk_localidade = localidades.pk_localidade 
    )

select *
from clientes_enriquecidos
