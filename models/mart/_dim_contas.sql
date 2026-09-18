with
    contas as(
        select *
        from {{ ref('rfd_dimensao_contas') }}
    )

select *
from contas