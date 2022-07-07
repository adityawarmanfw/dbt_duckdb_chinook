{{ config(materialized="view", tags="staging") }}

SELECT playlist_id,
       name AS playlist_name
  FROM {{ source('csv', 'playlist') }}