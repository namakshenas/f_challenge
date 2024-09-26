### RetentionStatus
This column checks whether the customer is retained based on their last purchase date. If the latest OrderDate
for the customer is within the last 12 months
(i.e., greater than or equal to `DATE(2022, 6, 29) - 365`), the customer is flagged as "Retained"; otherwise, they are marked as "Not Retained."
For this purpose, I identified the high-value customers whose CustomerLifetimeValue is in the top 10% (greater than or equal to the 90th percentile).
This is done using PERCENTILEX.INC to calculate the 90th percentile of CLV.
