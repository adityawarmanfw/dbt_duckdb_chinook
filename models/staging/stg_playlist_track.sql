{{ config(materialized="view", tags="staging") }}

SELECT * FROM {{ source('csv', 'playlist_track') }}