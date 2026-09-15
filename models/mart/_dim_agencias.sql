with
    agencias as(
        select *
        from {{ ref('rfd_dimensao_agencias') }}
    )

select *
from agencias