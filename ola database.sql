Create database Ola;
use ola;
# 1.	Retrieve all successful bookings:
create view Successful_Bookings As
Select * from bookings
WHERE Booking_status = 'Success';

# 1.	Retrieve all successful bookings:
select * from Successful_Bookings;

# 2.	Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle AS 
Select vehicle_Type, AVG(Ride_Distance)
AS avg_distance FROM bookings
group by Vehicle_Type;

Select * from ride_distance_for_each_vehicle;

# 3.	Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers AS
select count(*) from bookings
where Booking_Status ='canceled by customer';

Select * from cancelled_rides_by_customers;

# 4.	List the top 5 customers who booked the highest number of rides:
create view top_5_customers AS
select Customer_ID, COUNT(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

select * from top_5_customers;

# 5.	Get the number of rides cancelled by drivers due to personal and car-related issues:
create view rides_cancelled_by_drivers_P_C_issues AS 
select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from rides_cancelled_by_drivers_P_C_issues;

# 6.	Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view maximum_and_minimum_driver_ratings AS
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as  min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

select * from maximum_and_minimum_driver_ratings;

# 7.	Retrieve all rides where payment was made using UPI:
create view UPI_Payment AS
select * from bookings
where Payment_Method = 'UPI';

select * from UPI_Payment;


# 8.	Find the average customer rating per vehicle type:
create view average_customer_rating_per_vehicle_type AS
select Vehicle_Type, avg(Customer_Rating) AS Avg_Customer_Rating
from bookings
group by Vehicle_Type;

select * from average_customer_rating_per_vehicle_type;

# 9.	Calculate the total booking value of rides completed successfully:
create view total_successful_ride_value AS
select sum(Booking_Value) AS total_successful_ride_value
from bookings
where Booking_Status = 'Success';

select * from total_successful_ride_value;

# 10.	List all incomplete rides along with the reason:
create  view incomplete_rides_with_the_reason AS 
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';

select * from incomplete_rides_with_the_reason;



# 1.	Retrieve all successful bookings:
select * from Successful_Bookings;
	
# 2. Find the average ride distance for each vehicle type:
Select * from ride_distance_for_each_vehicle;

# 3.Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

# 4.List the top 5 customers who booked the highest number of rides:
select * from top_5_customers;

# 5.Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from rides_cancelled_by_drivers_P_C_issues;

# 6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from maximum_and_minimum_driver_ratings;
# 7.Retrieve all rides where payment was made using UPI:
select * from UPI_Payment;

# 8.Find the average customer rating per vehicle type:
select * from average_customer_rating_per_vehicle_type;

# 9.Calculate the total booking value of rides completed successfully:
select * from total_successful_ride_value;

# 10.List all incomplete rides along with the reason:
select * from incomplete_rides_with_the_reason;


