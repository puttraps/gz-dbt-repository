SELECT
     date_date,
     ROUND (SUM (ads_cost),2) as ads_cost,
     SUM (impression) as ads_impression,
     SUM (click) as ads_click

 FROM {{ref("int_campaigns")}}
 GROUP BY  date_date
 ORDER BY date_date