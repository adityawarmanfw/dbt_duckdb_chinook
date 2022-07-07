{{ config(materialized="table", tags="fact") }}

    SELECT *
      FROM {{ ref('stg_playlist_track') }} playlist_track
 LEFT JOIN {{ ref('dim_track') }} track USING (track_id)