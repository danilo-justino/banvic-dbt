with
    colaboradores as(
        select *
        from {{ ref('rfd_dimensao_colaboradores') }}
    )

select *
from colaboradores