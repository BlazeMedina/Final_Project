# Capstone Project - Property Location Classification

## Presentation 1
### Selected Topic 
The purpose of our project is to analyze real estate data from two NC counties, Wake and Durham, to determine if there are distinguishable property differences in each county.

### Reason For Selecting This Topic 
Inspired by Zillow.com, we thought that real estate data would be relatively accessible and abundant.

The topic of house location estimation was chosen because of the difficulty faced during house search and the current instability in the housing market resulting in steep price fluctuations. 

House purchasing can be influenced by various factors.

With the Raleigh-Durham area ranking #3 on the “Best Places to Live In America” by U.S News & World Report, we wanted to see if buyers’ wants & needs for a house could classify them in a county where those property features would be more prevalent 


### Description of the Source of Data
From Rapid API, we utilized the Zillow.com API to generate the dataset of house sales from Wake and Durham county for our analysis. 
The following fields were used to determine potential influence on the property location:

- Price Zestimate
- Living Space Square Footage
- Bedroom Count
- Bathroom Count
- Area Lot Size

### Questions We Hope to Answer
Are we able to predict the county location of a house based on certain property parameters? <br />
Are there certain parameters of a property distinguishable by county?

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
Creating a provisional machine learning model. <br />
Establishing an ERD and a database. <br />

- Segment 2: <br />
Pivoting from machine learning linear regression to machine learning classification. <br />
Start drafting the Google Slides for Thursday's Segment 2 Presentation <br />
Need to start thinking about what method to use for classification ml model. <br />
Need to start thinking about what important features do we want our audience to focus on in regards to the dashboard. <br />
Need to finish loading the data into the database and connect it to our machine learning model & other notebooks. <br />

- Segment 3: <br />
For 05/25 Segment 3 Presentation, we need to add the additional slides and assign speaking roles

### Exisiting Challenges
- Segment 1: <br />
Finding a big enough database that contains all of the desired information we need to feed into our machine learning model.<br />
Testing to see if we create a webpage that allows us to enter inputs and show us a response from our trained machine learning model. <br />

- Segment 2: <br />
Which machine learning model should we utilize for our data analysis? <br />
Can we deploy our machine learning model to our HTML site and make it user interactive? <br />

- Segment 3: <br />
Can we present our project & deliverable all in six minutes?

## Future Work
- Segment 1: <br />
Meet as a team on 05/14 to prepare for Presentation 1 and Segment 1 turn in <br />
Start working on Segment 2 requirements <br />

- Segment 2: <br />
Meet as a team 05/18 to prepare for presentation 2 <br />
Need to start drafting dashboard visuals for presentation day <br />
Divide up the remaining work to be prepared for Deliverable 2 turn in <br />
Meet as a team 05/22 to discuss the what has been completed and the plan for the upcoming week <br />
Meet as a team 05/24 to discuss updates and assign slides for Thursday's Segment 3 Presentation <br />


- Segment 3: <br />
Add the rest of the necessary slides to the Google slide deck <br />
Finalize the dashboard <br />
Finalize the readme
Clean up the Github Repo
Meet 05/31 to record presentation and dashboard use
 

## List of Technologies

**Data Source:** Zillow.com API, specifically utilizing real estate data for houses sold in Wake & Durham County 

**Software:**  pgAdmin 4, JavaScript, Python, HTML, CSS, matpotlib, Jupyter Notebook, Pandas.

**Database:** Quick DBD was used to create the ERD. PostgreSQL & AWS for data storage. To connect our database to the Jupyter Notebook we used the psycopg2 & sql dependency.

**Data Cleaning and Transformation Libraries** NumPy, Pandas, Matplotlib, Seaborn, plotly.express, & hvplot.pandas.

**Machine Learning:** Scikit-Learn, sklearn.model_selection are the library used to perform data classification and Logistic Regression. We also used the TensorFlow import to create our deep learning model. Users will also need to pip install m2cgen to run our machine learning notebook.

**Dashboard** HTML, CSS, & JavaScript 

**Source Control** all code repository and readme files are stored in Github.

## Project Outline
With the real estate data from Wake and Durham County, we created a database using PostGres and AWS that joined these datasets together. Using the AWS as the host, we were then able to connect our joined tables to our data exploratory and machine learning notebooks. <br />
Once we were able to feed the data into the Jupyter Notebooks, we were able to determine what preprocessing was necessary. Once finished with preprocessing, we determined our features and target variables and split the data into testing and training sets. To help us determine the best machine learning model, we utilized the machine learning pipeline. Learning that the Random Forest Classifier is the best model, we created a dashboard to visually display our results. 

## Machine Learning Model 
### Description of Preliminary Data Preprocessing
To start the data preprocessing and cleaning phase of our project, we first had to address the "props.AreaUnit" series that contained the unit of measurement for the "props.lotAreaValue". In this column we had both square footage and acres. We decided to convert the entire series to acres. <br />
After reviewing our county real estate data, we found that we did not have a county column for our target variable. So we created two lists of cities in each county and assigned a county value through this process. In our dataset, Durham County is 0 and Wake County is 1. <br />
The purpose of our machine learning model is to compare real estate properties and their features, we want to make sure that the data we captured is relevant to our analysis, so we dropped the rows in the database where bedrooms, bathrooms, and the living area is equal to 0. This will remove properties that were open lots or rows that contained any errors. <br />
We checked the data types of each of the columns to make sure they were all in a correct type. We needed to change the zip code, number of bedrooms, and number of bathrooms all to the interger type. The last preprocessing action we did was convert the property type column, which contained "single family home", "condo", "apartment", and other like values into categorical columns. <br />
At the conclusion of our data preprocessing and cleaning we were left with 8782 rows of data. 

### Description of Preliminary Feature Engineering & Preliminary Feature Selection
Due to the nature of the project, using supervised machine learning, we knew that our "y" or target variable would be the county value we assigned each real estate property. As for the feature selection, we decided to remove any location themed columns. We dropped "city", "county_val", "zip", "props.latitude", and "props.longitude". In the end our feature selection consisted of the zestimate (or predicted value of the house), number of bedrooms, number of bathrooms, living area square footage, the lot area size, and the property type. We chose these features because these are typically the main criteria when individuals are looking for a house. 

### Description of How the Data was Split Into Training & Testing Sets
We used the 80-20 split for the training and testing ratio. 80% of the data was used to train the model and the remaining 20% of the data was used to test the model. 

### Explaination of Model Choice, Including Limitations & Benefits 
To get a comprehensive overview of how well the various machine learning models would perform with our training and testing data, we implemented a machine learning pipeline. We created a list of six models to test and compared the accuracies and their confusion matrices. These six models were: logistic regression, SVM, KNN, Decision Tree, Random Forest, and Naive Bayes. As seen in the chart below, the Random Forest Classifier had the highest accuarcy score with 69%. We also ran a Keras deep learning network model to confirm Random Forest was the best choice. Our Keras model ended up having 68% accuracy. 

![Screenshot 2023-05-21 125457](https://github.com/BlazeMedina/Final_Project/assets/119636655/6a7c45b5-11d1-4aed-9c3f-af02f045c27d)

![Screenshot 2023-05-30 171441](https://github.com/BlazeMedina/Final_Project/assets/119636655/2a85ba23-0802-4afe-8b2d-1f817d235d09)

<br />
After running all of the machine learning models, it was clear to choose Random Forest Classifier as our final machine learning model. In hopes to further optimize our model, we used GridSearch to help us determine what the best estimators and parameters were. As it turns out we were already reaching our best score at 69%. We did not change our model choice between the Segment 2 and Segment 3 deliverables. 
The limitations with this model choice is that 69% is the highest we could optimize, so there is still a large margin for error when implementing the model.   <br />
The benefits with this model choice is that we've evaluated several options and reviewed accuracy scores and determined this model would perform the best to answer the question at hand. 
<br />

### Final Confusion Matrix & Accuracy Score
Below is the final confusion matrix and accuracy score for our Random Forest Classifier. Again this model scored the highest with a 69% accuracy score, so our model can classify a property location data point 69% of the time. In regards to the confusion matrix, our model was able to accurately categorize 624 true negatives property locations (TN), 251 false positives (FP), 288 false negatives (FN), and predict 594 actually true property locations (TP). In the end, our model 69% percent of the time can predict the location of your property or desired property based on the property features such as: number of bedrooms and bathrooms, square foot living area, lot size, and price. To further our analysis, in the next phases of this project we could incorporate statistics to understand the ratio of each type of house in Wake and Durham County. This would allow us to see the probability make up and allow us to understand why the machine learning model classifies the properties the way it does. 

Accuracy Score             |  Confusion Matrix
:-------------------------:|:-------------------------:
![Screenshot 2023-05-30 171423](https://github.com/BlazeMedina/Final_Project/assets/119636655/ab440485-cdd9-4ab3-a878-8de29be99a04)  |  ![Screenshot 2023-05-30 170841](https://github.com/BlazeMedina/Final_Project/assets/119636655/d70f24d3-4e06-4391-bfda-589d19a8bed9)
## 

## Dashboard 
For our dashboard segment of the capstone project we utilized a HTML page. Our webpage has multiple tabs that can be clicked through to display different information about the project. These tabs contain the project summary, a sample of the data used in the machine learning model, a description of our machine learning model, charts that explain the relationship of our data between the two counties, and our team member information.

### Description of the Interactive Elements
Alongside of the interactive tabs, we have a section where users can input property specifications into our deployed machine learning model to determine where a property is located. These specifications are: home value, number of bedrooms, number of bathrooms, livable square footage, acreage, and the type of property. Clicking the "Press Me" button will prompt the user added information to be processed through the model and your house location prediction will display on the screen.   <br />
<br /> ![Screenshot 2023-05-29 170811](https://github.com/BlazeMedina/Final_Project/assets/119636655/e70a214e-75df-415e-b846-9f25bcf03a6a)

## Links:

- Database Link:
- Slide Deck Link: https://docs.google.com/presentation/d/1fuSEjlgvWbBRcpDQHJYFIET4RZRHzRyaqUyjunIX7c8/edit?usp=sharing
- Team Google Doc: https://docs.google.com/document/d/164kIARKGBgcrHXU49Ajj9LOiWtrlebf3gR6RnERRuJ8/edit
- Dashboard Link: https://blazemedina.github.io/Final_Project/
