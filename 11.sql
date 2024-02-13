
-- Get the total number of premium users in the platform aspremium_users_count.
SELECT
  COUNT(
    CASE
      WHEN premium_membership = 1 THEN 1
      ELSE NULL
    END
  ) AS premium_users_count
FROM
  USER;