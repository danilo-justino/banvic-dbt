with
    clientes as(
        select *
        from {{ ref('rfd_dimensao_clientes') }}
    )

select *
from clientes