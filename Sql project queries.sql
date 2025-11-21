DROP TABLE IF EXISTS ola_rides;


CREATE TABLE ola_rides (
    Date_Time TIMESTAMP,
    Time_s TIME,
    Booking_ID VARCHAR(20),
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(20),
    Vehicle_type VARCHAR(50),
    Pickup_location VARCHAR(200),
    Drop_location VARCHAR(200),

    V_TAT varchar(200),
    C_TAT NUMERIC,
    
    Canceled_Rides_by_Customer varchar(200),
    Canceled_Rides_by_Driver varchar(200),

    Incomplete_Rides varchar(200),
    Incomplete_Rides_reason VARCHAR(200),

    Booking_Value INT,
    Payment_Method VARCHAR(50),

    Ride_Distance NUMERIC(3,1),
    Driver_Ratings NUMERIC(3,1),
    Customer_Rating numeric(3,1)
);

select  * from  ola_rides;

-- 1.Rrtrivr all successful booking
-- by this we can access booking from this successful_booking
create view successful_Bookings as
select * from  ola_rides
where Booking_status = 'Success';
-- Easy to access and only succrssful bokking we will get
select * from successful_Bookings

--2. Find the average ride distance for each vehicle type
create view ride_distance_for_each_vehicle as
select vehicle_type,avg(Ride_Distance)
as average_distance from ola_rides
group by vehicle_type;

select * from ride_distance_for_each_vehicle;


--3. Get the total number of canceled rides by customers:
create view canceled_rides_by_customers as
select count(*) from ola_rides
where Booking_status = 'Canceled by Customer';

select * from canceled_rides_by_customers;

-- 4. list the top 5 customers who booked the highest number of rides
create view Top_5_Customer As
select customer_ID,count(Booking_ID) as total_rides
from ola_rides
group by customer_Id
order by total_rides desc limit 5;

select * from Top_5_Customer;


-- 5. Get the number of rides canceled by drivers due to personal and car-related issues
create view Rides_canceled_by_Drivers_p_c_Issues as 
select count(*) from ola_rides
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from Rides_canceled_by_Drivers_p_c_Issues;

-- Find the maximum and minimum driver ratings for prime sedan booking
create view Max_Min_Driver_Ratings as
select Max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_ratings from ola_rides
where Vehicle_type = 'Prime Sedan';

select * from Max_Min_Driver_Ratings;

--7 Retrieve all rides where payment was made using upi
create view UPI_payment as
select * from ola_rides
where payment_method = 'UPI'

--8. Find the average customer rating per vehicle type
create view AVG_Cust_Ratings as
select vehicle_type,avg(customer_rating) as avg_customer_rating
from ola_rides
group by Vehicle_Type;

--9.Calculate the total booking value of rides completed successfully
select sum(Booking_value) as total_successful_value
from ola_rides
where Booking_Status = 'Success';



--10 List all imcomplete rides along with the reason
create VIew Incomplere_Rides_Reason as
select Booking_ID,Incomplete_rides_reason
from ola_rides
where Incomplete_Rides='Yes';

select * from Incomplere_Rides_Reason;
