

with
    colaboradores as (
        select *
        from {{ ref('trt_erp_colaboradores') }}
    )

    , localidades as (
        select *
        from {{ ref('trt_erp_localidades') }}
    )

    , colaboradores_enriquecidos as (
        select
           colaboradores.pk_colaborador
            , colaboradores.fk_gerente as fk_colaborador_gerente
            , colaboradores.fk_localidade
            , colaboradores.nome_colaborador
            , colaboradores.email_colaborador
            , colaboradores.cpf_colaborador
            , colaboradores.data_nascimento_colaborador
            , colaboradores.endereco_colaborador
            , colaboradores.cep_colaborador 
            , localidades.cidade  as cidade_colaborador
            , localidades.uf      as uf_colaborador
        from colaboradores
        left join localidades on colaboradores.fk_localidade = localidades.pk_localidade 
    )

select *
from colaboradores_enriquecidos
