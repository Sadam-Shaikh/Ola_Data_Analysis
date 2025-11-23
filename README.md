# Ola_Data_Analysis
OLA Bookings Data Analysis Project
📌 Project Overview

This project presents a complete end-to-end analysis of OLA Cab Bookings, covering data preprocessing in Excel, database integration using PostgreSQL, business analytics through SQL, and a fully interactive multi-page dashboard created in Power BI.

The analysis focuses on major business areas such as overall performance, vehicle types, revenue, cancellations, and customer ratings.

🧩 Data Analysis Workflow
1. Data Preprocessing (Excel)

Before loading the data into PostgreSQL, Excel was used for:

Cleaning raw OLA booking records

Handling missing values

Removing duplicates

Formatting date/time columns

Creating structured columns (where needed)

Preparing clean datasets for database loading

Excel served as the first step in ensuring data accuracy and consistency.

2. Database Integration (PostgreSQL)

Cleaned data was loaded from Excel into PostgreSQL

SQL business queries were used to analyze OLA booking patterns

SQL was used to calculate KPIs linked with the dashboard pages

Logical view/tables were created to support Power BI

The database acted as the core analytical engine for business insights.

3. Business Analysis (SQL)

SQL queries were written to answer key business questions such as:

Total bookings

Revenue generated

Vehicle-wise performance

Cancellation insights

Customer rating trends

Hourly/day/week/month-wise analysis

Trip completion vs failure ratios

These insights directly power the dashboard visuals.

4. Power BI Dashboard (Five Pages)

A multi-page interactive dashboard was developed with navigation buttons allowing users to switch between insights easily.

Dashboard Pages Created
📄 Page 1: Overall Analysis

Includes KPIs such as:

Total Bookings

Total Revenue

Completed vs Cancelled Trips

Repeat Customers

Location-wise trip distribution

Overall trends

This page gives the complete business snapshot.

📄 Page 2: Vehicle Type Analysis

This page breaks down bookings by vehicle category:

Mini

Micro

Prime

Auto

Rentals and Outstation

Insights include:

Vehicle-wise revenue

Vehicle-wise trip counts

Booking preferences

Peak performance times

📄 Page 3: Revenue Analysis

Focused on all revenue-related metrics:

Total revenue

Revenue by vehicle type

Revenue by city/region

Revenue trend (daily/weekly/monthly)

High-value vs low-value trips

This page helps understand the profitability of OLA services.

📄 Page 4: Cancellation Analysis

Shows cancellation behavior patterns:

Total cancellations

Cancellation percentage

Driver-initiated vs customer-initiated cancellations

Peak cancellation hours

Cancellation by vehicle type and city

Useful for identifying operational inefficiencies.

📄 Page 5: Ratings Analysis

Customer experience insights such as:

Average driver rating

Rating distribution

Low-rating vs high-rating trips

Impact of vehicle type on ratings

Rating trends across months

This page highlights customer satisfaction levels.
