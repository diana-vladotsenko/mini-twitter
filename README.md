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
