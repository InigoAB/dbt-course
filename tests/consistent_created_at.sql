SELECT *
FROM {{ ref("fct_reviews") }} AS reviews
INNER JOIN {{ ref("dim_listings_cleansed") }} AS listings
    ON reviews.LISTING_ID = listings.LISTING_ID
    AND reviews.review_date < listings.created_at