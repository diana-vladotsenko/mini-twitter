# Mini Twitter
A simplified microblogging web application built with Node.js, Express, SQL Server, and Handlebars.

## Overview
Mini Twitter is an educational microblogging application inspired by X.com (formerly Twitter).  
It demonstrates how to:

- design a normalized relational database  
- populate it with realistic test data  
- build non trivial SQL queries  
- render results in a simple web UI  

The app reads data from SQL Server using SQL scripts and does not include UI based data creation. Test data is inserted through SQL scripts as required by the assignment.

## Features
- List all users  
- View a user profile and their posts  
- View all posts with:
  - media  
  - comments  
  - likes  
  - hashtags  
- Statistics page with aggregate metrics  
- Top 10 most active users  
- Clean Handlebars based views  
- Optimized SQL queries with indexes

## Technologies used
- Node.js 
- Express.js
- Handlebars (HBS)
- Microsoft SQL Server (Azure Studio)
- CSS

## Running the Project
1. Install dependencies
<pre> npm install </pre>

3. Start the server
<pre> node index.js </pre>

5. Open in browser
<pre> http://localhost:3000 </pre>

7. Configure SQL Server
Make sure SQL Server is running and the connection details in **sql.js** match your environm

## Pages
<img width="1100" height="800" alt="Screenshot 2025-11-21 at 21 05 37" src="https://github.com/user-attachments/assets/53365e8b-6ba0-47d7-845c-38b079969796" />
<img width="1100" height="800" alt="Screenshot 2025-11-21 at 21 06 05" src="https://github.com/user-attachments/assets/6fffe353-3bb0-409b-b26b-645f77e7da01" />
<img width="1100" height="800" alt="Screenshot 2025-11-21 at 21 06 17" src="https://github.com/user-attachments/assets/ca040b74-2a06-46fa-89fe-efb5a0ce5747" />
<img width="1100" height="800" alt="Screenshot 2025-11-21 at 21 07 24" src="https://github.com/user-attachments/assets/b0aa6a31-0bb7-4ccb-abcd-717e3f22de7d" />
<img width="1100" height="800" alt="Screenshot 2025-11-21 at 21 07 30" src="https://github.com/user-attachments/assets/0e12f0bc-9d8e-469a-bc78-5d8ec4343be2" />


