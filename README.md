# final-project-uber-eats
🚀 Project Overview
This project provides insights into restaurant performance, menu pricing, and consumer preferences using a dataset of restaurants partnered with Uber Eats. By analyzing restaurant rankings, menu structures, and pricing strategies, we aim to help restaurant owners, investors, and platform operators optimize their decision-making.

📁 Data Source & Availability
Sourced from Kaggle: Web-scraped data of Uber Eats partner restaurants in the US.
Two datasets:
restaurants.csv: General restaurant data (ID, name, ratings, price range, category, etc.).
restaurant-menus.csv: Detailed menu items (category, name, price, description).
📌 Business Questions
We explored key business questions related to:

Restaurant Performance & Ranking

Factors influencing restaurant rankings
Correlation between menu prices and ratings
Geographic trends in restaurant ratings
Menu Insights & Pricing Strategy

Average price ranges across cuisines
Impact of menu category on ratings
Pricing trends across locations
Market Trends & Consumer Preferences

Popular cuisines and menu categories
Highest-rated restaurant categories
Regional cuisine preferences
Geospatial Analysis

Areas with the highest-rated restaurants
Restaurant density variations
Price distribution across different neighborhoods
🔬 Hypotheses
The most common cuisines tend to be the most affordable.
✅ Findings: Some popular cuisines are indeed affordable, but demand is also influenced by brand recognition and convenience.

Most restaurants have either very low or very high ratings, with few in between.
✅ Findings: A bimodal distribution was observed—restaurants either thrive or struggle, with few truly "average" ones.

🛠️ Data Cleaning & Processing
Fixed price range column ($ → "Cheap", $$$ → "Expensive", etc.).
Standardized restaurant & menu categories (e.g., merging "Burgers, American, Sandwiches" → "Burgers").
Converted menu prices to numerical values for analysis.
Removed duplicate/inconsistent categories to improve insights.
🏗️ Database Design
Primary Key: id (Restaurants), restaurant_id (Menus).
Key Fields: name, category, price_range, score, ratings.
Challenges: Handling many-to-many relationships, data normalization, and optimizing query performance.
📈 Insights & Visualizations
Top 10 restaurant categories based on popularity.
Price distribution across menu items & categories.
Geographic trends in restaurant density & pricing.
Rating distribution analysis (strong bimodal pattern).
🔮 Next Steps
Deep dive into high vs. low-rated restaurants: Identify key success factors.
Price sensitivity analysis: Determine optimal price ranges for higher ratings.
🏆 Key Learnings
✔️ Data cleaning is crucial: Handling inconsistent categories is essential for meaningful insights.
✔️ The right visualizations matter: KDE plots improved data clarity over scatter plots.
✔️ SQL database setup was challenging: Managing relationships and query performance required extra effort.

📌 About This Project
Author: Lukas Günther
Bootcamp: Ironhack Data Analytics - Jan 2025
Dataset: Kaggle (Uber Eats Restaurants & Menus)

🚀 Feel free to explore and contribute!