# Final Project - Segment 1 

## Presentation 1
### Selected Topic 
For the final project we decided to focus on real estate and estimating the sale price of a house.

### Reason For Selecting This Topic 
Inspired by Zillow.com, we thought that real estate data would be relatively accessible and abundant.

### Description of the Source of Data
Zillow.com API <br />
Zillow Challenge Kaggle Dataset <br />

Focusing on these parameters:
- Sale Price
- Square Footage
- Bedroom Count
- Bathroom Count
- City
- Zip Code
- Pool size
- Year Built
- Number of Stories

### Questions We Hope to Answer
Are we able to predict the value of a house based on certain parameters?

## Team Dymanic
### Communication Protocols
For the final four weeks of class as we work to complete this project, as a team we decided that we would make it a priority to attend the bi-weekly zoom classes. These classes provide an automatic two hour meeting time where we can discuss and plan our next steps. <br />
<br />
For outside of class communication, we have a private slack group set up where we post daily updates, ask questions, and communicate any issues that we run into. The current status of the project determines if we need to schedule another team meeting. For these team meetings we will utilize Skype. A Slack message will go out earlier in the day to give everyone a reminder about the meeting. To help us with time management we are utilizing a Google Doc containing all of the requirements for the project. This allows us at a high level to know what has been completed and what still needs our attention.  <br />
<br />
On days where we do not plan to meet, we will check in with the rest of team over Slack, relaying any necessary updates to the team. 

## Current Status
### Specific Needs
- Segment 1: <br />
Cleaning the two potential data sets <br />
Creating a provisional machine learning model 
Establishing an ERD and a database 
<br />

- Segment 2: <br />
Pivoting from machine learning linear regression to machine learning classification
Start drafting the Google Slides for Thursday's Segment 2 Presentation

### Exisiting Challenges
- Segment 1: <br />
Finding a big enough database that contains all of the desired information we need to feed into our machine learning model.<br />
Testing to see if we create a webpage that allows us to enter inputs and show us a response from our trained machine learning model.
<br />
- Segment 2: <br />


## List of Technologies
### Which tools fit best for your project?

**Data Sources:** Zillow.com API, Zillow Challenge Kaggle Dataset

**Software:**  pgAdmin 4, JavaScript, Python, HTML, CSS, Python matpotlib, Juyter notebook, Pandas, Excel.

**Database:** PostgreSQL 11, AWS for data storage.

**Data Cleaning and Transformation libraries** NumPy, Pandas, Matplotlib.

**Machine Learning:** Scikit-Learn is the library used to perform data classification and Logistic Regression.

**Dashboard** Leaflet Mapping API and geoapify for coding, Tableau

**Source Control** all code repository and readme files are stored in Github.

### Which tools will you use for each section?
- Cleaning the data: We used Pandas library to clean data. This was done by
     1. creating dataFrames to select columns needed for analysis 
     2. using isnull().sum() to retrieve total number of null for each column and eliminate rows as necessary.
     3. describe() function is used to get averages and other stats to ensure data validation.
     4. using dtype function to check and convert object and number fields.

- Data Storage: PostgreSQL to store data and extract csv files for analysis.

- Database Design: Quick DBD was used to create ER diagram for daatase table design.

## Future Work
- Segment 1: <br />
Meet as a team on 05/14 to prepare for Presentation 1 and Segment 1 turn in <br />
Start working on Segment 2 requirements
<br />

- Segment 2: <br />

<br />

## Links:

- Database Link:
- Slide Deck Link:
- Important References:
- Google Doc Timeline: https://docs.google.com/document/d/164kIARKGBgcrHXU49Ajj9LOiWtrlebf3gR6RnERRuJ8/edit
