with
    datas as(
        select *
        from {{ ref('rfd_dimensao_datas') }}
    )

select *
from datas