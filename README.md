# SQL

**Project Description**

The project is based on the online video-sharing platform like YouTube which hosts tens of thousands of channels and crores of users.

**Database**

The sample database consists of tables that store the information of users, channels, videos, genres in tables.
The sketches of tables used are given below.

User table - 
user_id |	name | gender |	age	| country	| premium_membership

Channel table - 
channel_id | name	| owner_id	| created_datetime

Video Table - 
video_id | name	| duration_in_secs	| published_datetime	| no_of_views	| channel_id
Genre Table - 
genre_id	| genre_type

Channel_user table - 
channel_id	| user_id	| subscribed_datetime

Video_genre Table - 
video_id	| genre_id

User_likes Table - 
user_id	| video_id	| reaction_type	| reacted_at


I have analysed the data using SQL queries and provided meaningful insights on the type of content that drives engagement, users growth, and many more to all the stakeholders.

