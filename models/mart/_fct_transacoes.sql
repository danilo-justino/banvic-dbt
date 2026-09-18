with
    transacoes as(
        select *
        from {{ ref('rfd_fato_transacoes') }}
    )

select *
from transacoes