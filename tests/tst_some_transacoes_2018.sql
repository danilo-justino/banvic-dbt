/*
    Esse teste certifica que as transações de 2018 batem com o valor auditado de 822.808,44
*/

with
    soma_transacoes_2018 as (
        select
            extract(year from fk_data) as ano
            , sum(valor_transacao) as total
        from {{ ref('rfd_fato_transacoes') }}
        group by 1
    )

select *
from soma_transacoes_2018
where 
    ano = 2018
    and total not between 822808.39 and 822808.49