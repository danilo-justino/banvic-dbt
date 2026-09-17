

with
    date_spine as (
        {{
           dbt_utils.date_spine(
            datepart = "day",
            start_date = "cast('2020-01-01' as date)",
            end_date = "cast('2026-01-01' as date)"
           ) 
        }}
    ),

    criar_datas as (
        select
            date_day as pk_data
            , extract(day from date_day) as dia
            , extract(month from date_day) as mes
            , extract(year from date_day) as ano
            , extract(quarter from date_day) as trimestre
            , extract(dow from date_day) as dia_da_semana
        from date_spine
    )

 select *
 from date_spine