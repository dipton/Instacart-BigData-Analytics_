orders = LOAD '/InstacartProject/input/orders.csv'
USING PigStorage(',')
AS (
    order_id:int,
    user_id:int,
    eval_set:chararray,
    order_number:int,
    order_dow:int,
    order_hour_of_day:int,
    days_since_prior_order:chararray
);

weekend = FILTER orders BY (order_dow == 0) OR (order_dow == 6);

STORE weekend
INTO '/InstacartProject/output/Pig4_WeekendOrders'
USING PigStorage(',');