-- SQL Bridge Homework #2 --
-- Forrest Wight --

DROP TABLE videos;
DROP TABLE reviews;

-- Question 1 --

create table videos (
	Video_ID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Length_Min DECIMAL(4,1) NOT NULL,
    URL VARCHAR(200) NOT NULL
);

DESCRIBE videos;

insert into videos values(1, 'SQL Tutorial Full Database Course for Beginners', 260.6, 'https://www.youtube.com/watch?v=HXV3zeQKqGY&t=9916s');
insert into videos values(2, 'MySQL Tutorial for Beginners Full Course', 190.3, 'https://www.youtube.com/watch?v=7S_tz1z_5bA');
insert into videos values(3, 'SQL JOINS Tutorial for beginners / Practice SQL Queries using JOINS - Part 1', 35.4, 'https://www.youtube.com/watch?v=0OQJDd3QqQM');

SELECT * FROM videos;

-- Question 2 --
create table reviews (
	User_ID INT PRIMARY KEY,
	Video_ID INT,
	Username VARCHAR(40),
    Rating INT,
    Review VARCHAR(200)
);

insert into reviews values(1, 2, 'George C.', 4, 'Very well organized and insightful!');
insert into reviews values(2, 1, 'Elaine B.', 5, 'Extremely indepth and well worth the time');
insert into reviews(User_ID, Video_ID, Username, Review) values(3, 1, 'Cosmo C.', 'This guy can talk.. in a good way');
insert into reviews values(4, 3, 'Jerry S.', 2, 'Not very captivating, but informative');
insert into reviews values(5, 3, 'Larry D.', 1, 'I want my dollar back!');

SELECT * FROM reviews;

-- Question 3 --
-- JOIN --

select v.*, r.User_ID, r.Username, r.Rating, r.Review
from videos v
JOIN reviews r
ON v.Video_ID = r.Video_ID
order by v.Video_ID;