### Data Model

![Alt text](https://github.com/namakshenas/f_challenge/blob/main/task_2/data_model.png)

### AverageCLVPerCustomerSegment
Please note that `SUMMARIZE(Customers, Customers[CustomerSegment])` groups the data by the `CustomerSegment`.

### ChurnStatus
`IF(... < DATE(2022, 6, 29), "Potential Churn Risk", "Active")` checks if the most recent purchase is before `DATE(2022, 6, 29)`. 
If true, the customer is flagged as "Potential Churn Risk"; otherwise, they are flagged as "Active". `DATE(2022, 6, 29)` is the cutoff date for checking whether the customer has made a purchase in the last 12 months.

### RetentionStatus
This column checks whether the customer is retained based on their last purchase date. If the latest `OrderDate`
for the customer is greater than or equal to `DATE(2022, 6, 29)`, the customer is flagged as "Retained"; otherwise, they are marked as "Not Retained."
For this purpose, I identified the high-value customers whose `CustomerLifetimeValue` is in the top 10% (greater than or equal to the 90th percentile).
This is done using `PERCENTILEX.INC` to calculate the 90th percentile of CLV.
In summary, this line filters the dataset to only include high-value customers.

### Bonus tasks
The bonus tasks will be analyzed in the `task_3` part.
