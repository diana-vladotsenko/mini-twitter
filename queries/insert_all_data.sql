USE MiniTwitter;
GO

---------------------------------------------------------
-- Genders
---------------------------------------------------------
INSERT INTO dbo.Gender (Name) VALUES
('Male'),
('Female'),
('Non-Binary');

---------------------------------------------------------
-- Users
---------------------------------------------------------
INSERT INTO Users (Full_Name, Username, Email, Gender_id, Created_at) VALUES
('Liam Anderson', 'liam.anderson', 'liam.anderson@gmail.com', 1, '2024-01-10 09:14:22'),
('Emma Johnson', 'emma.j', 'emma.johnson@yahoo.com', 2, '2023-11-03 15:22:41'),
('Noah Smith', 'noahsmith', 'noah.smith@outlook.com', 1, '2024-02-18 18:04:11'),
('Olivia Brown', 'olivia.brown', 'olivia.brown@gmail.com', 2, '2023-12-27 11:53:09'),
('Ethan Davis', 'ethan.d', 'ethan.davis@mail.com', 1, '2024-03-01 08:45:17'),
('Ava Wilson', 'avawilson', 'ava.wilson@yahoo.com', 2, '2024-01-21 14:12:19'),
('Mason Martinez', 'masonm', 'mason.martinez@icloud.com', 1, '2023-10-19 19:22:44'),
('Sophia Taylor', 'sophia.t', 'sophia.taylor@gmail.com', 2, '2024-02-05 07:09:55'),
('Logan Thomas', 'logan_t', 'logan.thomas@hotmail.com', 1, '2023-11-30 20:18:03'),
('Isabella Moore', 'isabellam', 'isabella.moore@outlook.com', 2, '2024-03-02 13:25:31'),
('James Jackson', 'jamesj', 'james.jackson@gmail.com', 1, '2024-01-02 10:44:18'),
('Mia Martin', 'mia.martin', 'mia.martin@yahoo.com', 2, '2023-09-14 16:09:27'),
('Benjamin Lee', 'benlee', 'ben.lee@proton.me', 1, '2023-12-12 09:33:15'),
('Charlotte Perez', 'charlottep', 'charlotte.perez@gmail.com', 2, '2024-03-06 12:41:29'),
('Henry Thompson', 'henryt', 'henry.thompson@mail.com', 1, '2024-02-13 17:52:12'),
('Amelia White', 'ameliawhite', 'amelia.white@icloud.com', 2, '2023-11-07 18:23:44'),
('Alexander Harris', 'alex.harris', 'alexander.harris@gmail.com', 1, '2024-01-28 11:13:56'),
('Harper Sanchez', 'harpers', 'harper.sanchez@yahoo.com', 3, '2023-12-19 14:52:33'),
('Michael Clark', 'michaelc', 'michael.clark@outlook.com', 1, '2023-10-25 07:27:41'),
('Ella Ramirez', 'ellar', 'ella.ramirez@gmail.com', 2, '2024-03-09 16:18:12'),
('Daniel Lewis', 'dlewis', 'daniel.lewis@hotmail.com', 1, '2023-09-22 12:11:05'),
('Evelyn Robinson', 'evelynr', 'evelyn.robinson@mail.com', 2, '2023-12-01 19:59:12'),
('Matthew Walker', 'matt.walker', 'matthew.walker@yahoo.com', 1, '2024-02-26 10:33:29'),
('Abigail Young', 'abigaily', 'abigail.young@gmail.com', 2, '2024-01-16 08:14:47'),
('Joseph King', 'josephk', 'joseph.king@icloud.com', 1, '2023-11-18 20:44:22'),
('Emily Wright', 'emily.w', 'emily.wright@outlook.com', 2, '2024-02-11 09:22:31'),
('Samuel Hill', 'samuelh', 'samuel.hill@gmail.com', 1, '2024-03-03 13:54:16'),
('Aria Scott', 'aria.scott', 'aria.scott@yahoo.com', 2, '2023-12-09 17:21:55'),
('David Green', 'davidgreen', 'david.green@mail.com', 1, '2024-01-24 15:14:08'),
('Grace Adams', 'gracea', 'grace.adams@gmail.com', 2, '2023-10-12 09:41:33'),
('Andrew Baker', 'andrewb', 'andrew.baker@outlook.com', 1, '2024-02-20 19:22:29'),
('Chloe Nelson', 'chloen', 'chloe.nelson@yahoo.com', 2, '2023-11-28 10:12:22'),
('Christopher Carter', 'chriscarter', 'christopher.carter@gmail.com', 1, '2023-09-30 18:44:01'),
('Nora Mitchell', 'nmitchell', 'nora.mitchell@icloud.com', 2, '2024-01-13 08:59:33'),
('Joshua Perez', 'joshperez', 'joshua.perez@gmail.com', 1, '2024-03-04 11:11:45'),
('Lily Roberts', 'lily.roberts', 'lily.roberts@yahoo.com', 2, '2023-12-30 14:32:10'),
('Elijah Turner', 'elijah.t', 'elijah.turner@outlook.com', 1, '2024-02-03 07:49:37'),
('Zoey Phillips', 'zoeyp', 'zoey.phillips@gmail.com', 2, '2024-01-19 19:01:44'),
('Gabriel Campbell', 'gabec', 'gabriel.campbell@mail.com', 1, '2023-11-02 08:37:55'),
('Hannah Parker', 'hparker', 'hannah.parker@gmail.com', 2, '2024-03-08 12:44:21'),
('Jack Evans', 'jack.evans', 'jack.evans@outlook.com', 1, '2023-10-17 10:21:12'),
('Riley Edwards', 'rileyed', 'riley.edwards@yahoo.com', 3, '2023-12-23 17:59:02'),
('Sebastian Collins', 'seb.collins', 'sebastian.collins@gmail.com', 1, '2024-01-06 13:04:49'),
('Victoria Stewart', 'victorias', 'victoria.stewart@mail.com', 2, '2024-02-17 09:36:26'),
('Hunter Morris', 'hunterm', 'hunter.morris@icloud.com', 1, '2023-09-11 15:27:44'),
('Layla Rogers', 'laylar', 'layla.rogers@gmail.com', 2, '2024-03-01 16:44:02'),
('Owen Reed', 'owen.reed', 'owen.reed@yahoo.com', 1, '2023-11-12 07:15:33'),
('Penelope Cook', 'penelopec', 'penelope.cook@icloud.com', 2, '2024-02-23 11:48:57'),
('Wyatt Morgan', 'wyattm', 'wyatt.morgan@gmail.com', 1, '2023-10-07 12:21:39'),
('Lillian Bell', 'lillianb', 'lillian.bell@outlook.com', 2, '2024-01-30 18:52:10'),
('Dylan Murphy', 'dylanm', 'dylan.murphy@yahoo.com', 1, '2024-02-08 09:41:27'),
('Scarlett Bailey', 'scarlettb', 'scarlett.bailey@gmail.com', 2, '2023-11-15 13:32:01'),
('Nathan Rivera', 'nathanr', 'nathan.rivera@outlook.com', 1, '2023-12-04 14:29:44'),
('Zoe Cooper', 'zoecooper', 'zoe.cooper@gmail.com', 2, '2024-03-05 08:22:12'),
('Isaac Richardson', 'isaacr', 'isaac.richardson@yahoo.com', 1, '2024-02-14 17:49:33'),
('Avery Cox', 'averyc', 'avery.cox@proton.me', 3, '2023-09-18 16:13:07'),
('Julian Howard', 'jhoward', 'julian.howard@gmail.com', 1, '2024-03-06 19:44:21');

---------------------------------------------------------
-- Posts
---------------------------------------------------------
INSERT INTO Posts (Users_id, Content, Created_at) VALUES
(12, 'Enjoying a quiet morning coffee and planning the week ahead.', '2024-01-04 09:12:11'),
(5, 'Just finished a workout and feeling great.', '2024-01-06 14:22:33'),
(33, 'Started learning SQL today. Pretty interesting stuff.', '2024-02-02 11:54:09'),
(19, 'Anyone else watching the new sci fi series tonight.', '2024-01-27 20:13:21'),
(41, 'Trying a new pasta recipe later. Wish me luck.', '2024-02-10 16:41:05'),
(3, 'Working on a side project and it is coming together nicely.', '2024-01-12 18:09:47'),
(24, 'It is freezing outside but at least the sun is out.', '2024-02-16 10:43:12'),
(56, 'Finally cleaned my desk. Productivity unlocked.', '2024-01-30 09:58:44'),
(7, 'Reading a new book this weekend.', '2024-02-01 15:14:29'),
(44, 'Late night coding session. Fuelled by coffee.', '2024-02-20 22:49:17'),
(11, 'Cooked a great dinner today.', '2024-01-19 19:11:02'),
(29, 'Big day tomorrow. Need some rest.', '2024-02-14 23:04:12'),
(1, 'Working remotely today and loving it.', '2024-01-08 08:32:21'),
(27, 'Taking a long walk to clear my head.', '2024-02-05 17:52:33'),
(48, 'Just heard a great new album.', '2024-02-12 13:12:40'),
(14, 'Trying to stay consistent with my habits.', '2024-02-18 11:17:58'),
(32, 'New week, new goals.', '2024-01-22 09:42:33'),
(54, 'Weather is perfect for a run today.', '2024-02-08 07:41:11'),
(8, 'Finally finished a task I delayed for weeks.', '2024-01-15 18:24:01'),
(23, 'Learned something new today.', '2024-02-06 14:44:19'),
(35, 'Relaxing with music after a long day.', '2024-02-09 19:53:56'),
(10, 'Exploring new tech stuff today.', '2024-01-25 12:18:40'),
(52, 'I need coffee. Lots of coffee.', '2024-01-31 10:02:14'),
(18, 'This week went by so fast.', '2024-02-17 17:43:55'),
(43, 'Trying a new productivity system.', '2024-01-16 13:32:27'),
(2, 'Focusing on learning something new every day.', '2024-01-20 16:19:33'),
(37, 'Today was surprisingly productive.', '2024-01-29 21:10:49'),
(49, 'Just saw an amazing sunset.', '2024-02-11 18:48:22'),
(46, 'Had a great conversation with a friend today.', '2024-01-13 20:55:09'),
(6, 'I love slow mornings like this.', '2024-02-07 08:51:41'),
(21, 'Setting up a new workspace.', '2024-01-18 11:22:17'),
(25, 'Time for a movie night.', '2024-02-13 21:15:59'),
(9, 'Caught in traffic again.', '2024-02-04 17:44:18'),
(28, 'Productive morning and relaxing afternoon.', '2024-02-15 14:12:39'),
(31, 'Laptop battery dying again. Not cool.', '2024-01-23 16:51:12'),
(36, 'Finished a big task. Feeling proud.', '2024-02-03 12:33:44'),
(17, 'Trying some new coding techniques.', '2024-02-19 09:56:02'),
(20, 'Feeling motivated lately.', '2024-01-28 10:08:33'),
(40, 'Need recommendations for good podcasts.', '2024-01-11 15:22:59'),
(15, 'Found a great cafe today.', '2024-02-02 10:44:18'),
(4, 'Watched a great documentary.', '2024-01-14 19:53:50'),
(13, 'Organizing all my files today.', '2024-02-06 18:32:27'),
(22, 'Trying to learn a new language.', '2024-01-26 09:37:21'),
(30, 'Taking a break from screens today.', '2024-02-09 15:41:01'),
(38, 'My cat woke me up way too early.', '2024-01-17 06:59:42'),
(45, 'Trying intermittent fasting again.', '2024-02-10 12:09:27'),
(50, 'Busy day but feeling accomplished.', '2024-01-24 20:13:10'),
(26, 'Feeling grateful today.', '2024-02-16 11:49:55'),
(53, 'Anyone else excited for the weekend.', '2024-02-01 14:07:14'),
(34, 'Went for a bike ride this morning.', '2024-01-29 08:18:39');

-- For TopActiveUsers
INSERT INTO Posts (Users_id, Content, Created_at) VALUES
(12, 'Weekend vibes. Really needed some rest today.', '2024-02-10 09:14:00'),
(5, 'Trying out a new recipe tonight. Smells amazing already.', '2024-02-11 18:22:00'),
(33, 'Working through a tough bug at work. Progress is slow but steady.', '2024-02-12 14:31:00'),
(19, 'Finally updated my workstation. Feels much smoother now.', '2024-02-09 11:55:00'),
(41, 'Taking a break and enjoying a cup of tea.', '2024-02-08 16:47:00'),
(3, 'Started a new book today. Loving it so far.', '2024-02-06 20:03:00'),
(24, 'Weather is great today. Might go for a walk.', '2024-02-05 13:10:00'),
(56, 'Trying to stay productive this week.', '2024-02-04 10:28:00'),
(7, 'Quick workout session finished. Feeling refreshed.', '2024-02-03 19:42:00'),
(44, 'Late night coding again. At least the coffee helps.', '2024-02-03 23:58:00'),
(11, 'Made progress in my project today. Pretty happy about it.', '2024-02-02 15:21:00'),
(29, 'Listening to some jazz while working. Good vibe.', '2024-02-01 17:30:00'),
(1, 'Tested out a new app today. Very smooth.', '2024-01-31 08:44:00'),
(27, 'Cleaning up my workspace. Feels much better now.', '2024-01-30 12:10:00'),
(48, 'Tried a new restaurant today. Food was great.', '2024-01-29 20:14:00'),
(14, 'Finishing up some tasks before the weekend.', '2024-01-28 10:33:00'),
(32, 'Really excited about the next month. Many plans ahead.', '2024-01-28 18:57:00'),
(54, 'Enjoying some quiet time with music.', '2024-01-27 19:05:00'),
(9, 'Working on personal goals. One day at a time.', '2024-01-26 09:17:00'),
(23, 'Had a great productive morning.', '2024-01-25 11:22:00');

-- User 12, making this the top active user
INSERT INTO Posts (Users_id, Content, Created_at) VALUES
(12, 'Another productive evening, finished two tasks ahead of schedule.', '2024-02-12 21:15:00'),
(12, 'Morning run felt great today.', '2024-02-13 07:32:00'),
(12, 'Working on personal goals tonight. Small steps add up.', '2024-02-14 19:40:00'),
(12, 'Trying out a new note taking workflow. Feels much more organized.', '2024-02-15 10:12:00');

-- For TopActiveUsers
INSERT INTO Posts (Users_id, Content, Created_at) VALUES
(5, 'Just grabbed a coffee. Ready to start the day.', '2024-02-11 09:25:00'),
(5, 'Learning something new every day. Love this momentum.', '2024-02-13 16:20:00'),
(33, 'Debugging another tricky issue. Slowly cracking it.', '2024-02-10 13:55:00'),
(7, 'Quick gym session before work. Feeling energised.', '2024-02-09 07:48:00');


---------------------------------------------------------
-- Comments
---------------------------------------------------------
INSERT INTO Comments (Users_id, Posts_id, Comment, Created_at) VALUES
(7, 1, 'Sounds like a great start to the day.', '2024-02-10 12:11:22'),
(22, 3, 'SQL is fun once you get the hang of it.', '2024-02-12 14:44:09'),
(14, 5, 'Good luck with the recipe.', '2024-02-11 16:21:37'),
(9, 2, 'Nice job staying active.', '2024-02-02 10:34:28'),
(31, 8, 'A clean desk is a clear mind.', '2024-02-03 17:41:12'),
(46, 7, 'Which book are you reading.', '2024-02-07 20:09:55'),
(1, 10, 'Late night coding is the best vibe.', '2024-02-18 23:32:14'),
(28, 4, 'Yes, I am watching it too.', '2024-01-31 19:18:27'),
(17, 6, 'Side projects are the best way to learn.', '2024-02-04 15:22:08'),
(25, 9, 'Coffee and reading is perfect.', '2024-02-13 13:48:52'),
(50, 11, 'Nice. What did you cook.', '2024-01-26 21:33:17'),
(19, 12, 'Rest well.', '2024-02-14 23:22:39'),
(6, 13, 'Remote work is awesome.', '2024-01-20 09:28:15'),
(42, 14, 'Walks are underrated therapy.', '2024-02-05 18:33:12'),
(55, 15, 'Great album. I liked it too.', '2024-02-12 14:29:55'),
(3, 16, 'Stay consistent. It pays off.', '2024-02-19 10:22:44'),
(40, 17, 'New week, new chances.', '2024-01-23 10:51:28'),
(13, 18, 'Perfect running weather.', '2024-02-08 07:55:31'),
(45, 19, 'I know that feeling.', '2024-01-15 19:14:32'),
(20, 20, 'Learning something new is always great.', '2024-02-06 15:25:57'),
(34, 21, 'Music helps everything.', '2024-02-09 20:01:12'),
(11, 22, 'What tech stuff.', '2024-01-25 12:49:44'),
(29, 23, 'Same here.', '2024-02-03 10:44:26'),
(52, 24, 'Weeks are flying by.', '2024-02-17 17:54:39'),
(41, 25, 'Which system.', '2024-01-17 14:12:22'),
(38, 26, 'Good mindset.', '2024-01-21 16:27:10'),
(12, 27, 'Love productive days like that.', '2024-01-29 21:21:02'),
(54, 28, 'Sunsets are magical.', '2024-02-11 18:59:42'),
(26, 29, 'That is great to hear.', '2024-01-14 21:05:33'),
(4, 30, 'Slow mornings are the best.', '2024-02-07 09:03:10'),
(10, 31, 'Nice setup.', '2024-01-19 12:54:48'),
(49, 32, 'Enjoy the movie.', '2024-02-13 21:31:18'),
(30, 33, 'Traffic is the worst.', '2024-02-04 17:56:17'),
(21, 34, 'Sounds like a solid day.', '2024-02-16 14:18:51'),
(5, 35, 'Battery life is a real struggle.', '2024-01-23 17:11:04'),
(16, 36, 'Good job.', '2024-02-03 12:41:52'),
(8, 37, 'Interesting. What are you learning.', '2024-02-19 10:16:15'),
(27, 38, 'Love the motivation.', '2024-01-28 10:19:45'),
(33, 39, 'Try the tech podcasts by Vox.', '2024-01-12 15:32:44'),
(2, 40, 'Cafes are the best working spots.', '2024-02-02 11:12:59'),
(44, 41, 'Which documentary.', '2024-01-14 20:05:20'),
(43, 42, 'Organizing files is so satisfying.', '2024-02-06 18:41:29'),
(51, 43, 'That is awesome.', '2024-01-26 10:03:14'),
(32, 44, 'Screen breaks are healthy.', '2024-02-09 15:55:31'),
(18, 45, 'Cats always do that.', '2024-01-17 07:11:10'),
(23, 46, 'How is it going.', '2024-02-10 12:19:44'),
(48, 47, 'Love that feeling.', '2024-01-24 20:22:30'),
(36, 48, 'Weekend hype.', '2024-02-01 14:18:49'),
(15, 49, 'Morning rides are the best.', '2024-01-29 08:29:51');

---------------------------------------------------------
-- Likes
---------------------------------------------------------
INSERT INTO Likes (Users_id, Posts_id) VALUES
(3, 1), (12, 1), (19, 1),
(7, 2), (44, 2), (22, 2),
(13, 3), (51, 3), (4, 3),
(24, 4), (31, 4), (10, 4),
(8, 5), (17, 5), (29, 5),
(6, 6), (14, 6), (27, 6),
(26, 7), (35, 7), (9, 7),
(1, 8), (54, 8), (41, 8),
(5, 9), (32, 9), (15, 9),
(16, 10), (30, 10), (21, 10),
(2, 11), (23, 11), (28, 11),
(33, 12), (20, 12), (36, 12),
(18, 13), (50, 13), (45, 13),
(37, 14), (38, 14), (43, 14),
(47, 15), (52, 15), (56, 15),
(48, 16), (25, 16), (40, 16),
(11, 17), (34, 17), (53, 17),
(42, 18), (46, 18), (49, 18),
(39, 19), (55, 19), (57, 19);

---------------------------------------------------------
-- Hashtags
---------------------------------------------------------
INSERT INTO Hashtags (Name) VALUES
('tech'), ('coding'), ('life'), ('motivation'), ('fitness'),('food'), ('music'), ('books'), ('travel'), ('coffee'),
('work'), ('study'), ('fun'), ('news'), ('learning'),
('goals'), ('productivity'), ('weekend'), ('chill'), ('vibes'),('sunset'), ('nature'), ('daily'), ('remote'), ('sql'),
('cloud'), ('design'), ('ideas'), ('focus'), ('running'),('healthy'), ('winter'), ('spring'), ('summer'), ('autumn'),
('energy'), ('progress'), ('challenge'), ('mindset'), ('lifestyle'), ('free'), ('mylife'), ('gymmie'), ('girlss'),
('fyp'), ('recc'), ('reccomendations'), ('lovetravel2025'), ('2025y'),
('work'), ('study'), ('fun'), ('news'), ('learning'),
('oo');

---------------------------------------------------------
-- Posts_Hashstags
---------------------------------------------------------
INSERT INTO Post_Hashtags (Posts_id, Hashtags_id) VALUES
(1,3),(1,10),
(2,5),(2,17),
(3,1),(3,25),
(4,14),(4,19),
(5,6),(5,20),
(6,11),(6,16),
(7,8),(7,13),
(8,17),(8,28),
(9,7),(9,30),
(10,1),(10,11),
(11,6),(11,3),
(12,9),(12,19),
(13,24),(13,29),
(14,17),(14,20),
(15,7),(15,21),
(16,11),(16,30),
(17,4),(17,14),
(18,5),(18,18),
(19,10),(19,33),
(20,12),(20,36);

---------------------------------------------------------
-- Media
---------------------------------------------------------
INSERT INTO Media (Url, MediaType, Created_at) VALUES
('https://picsum.photos/300?1', 'image', '2024-01-09'),
('https://picsum.photos/300?2', 'image', '2024-01-12'),
('https://picsum.photos/300?3', 'image', '2024-01-15'),
('https://picsum.photos/300?4', 'image', '2024-01-18'),
('https://picsum.photos/300?5', 'image', '2024-01-20'),
('https://picsum.photos/300?6', 'image', '2024-01-22'),
('https://picsum.photos/300?7', 'image', '2024-01-25'),
('https://picsum.photos/300?8', 'image', '2024-01-27'),
('https://picsum.photos/300?9', 'image', '2024-01-28'),
('https://picsum.photos/300?10', 'image', '2024-01-30'),
('https://picsum.photos/300?11', 'image', '2024-02-01'),
('https://picsum.photos/300?12', 'image', '2024-02-02'),
('https://picsum.photos/300?13', 'image', '2024-02-03'),
('https://picsum.photos/300?14', 'image', '2024-02-04'),
('https://picsum.photos/300?15', 'image', '2024-02-05'),
('https://picsum.photos/300?16', 'image', '2024-02-06'),
('https://picsum.photos/300?17', 'image', '2024-02-07'),
('https://picsum.photos/300?18', 'image', '2024-02-08'),
('https://picsum.photos/300?19', 'image', '2024-02-09'),
('https://picsum.photos/300?20', 'image', '2024-02-10'),
('https://picsum.photos/300?21', 'image', '2024-02-11'),
('https://picsum.photos/300?22', 'image', '2024-02-12'),
('https://picsum.photos/300?23', 'image', '2024-02-13'),
('https://picsum.photos/300?24', 'image', '2024-02-14'),
('https://picsum.photos/300?25', 'image', '2024-02-15'),
('https://picsum.photos/300?26', 'image', '2024-02-16'),
('https://picsum.photos/300?27', 'image', '2024-02-17'),
('https://picsum.photos/300?28', 'image', '2024-02-18'),
('https://picsum.photos/300?29', 'image', '2024-02-19'),
('https://picsum.photos/300?30', 'image', '2024-02-20'),
('https://picsum.photos/300?31', 'image', '2024-02-21'),
('https://picsum.photos/300?32', 'image', '2024-02-22'),
('https://picsum.photos/300?33', 'image', '2024-02-23'),
('https://picsum.photos/300?34', 'image', '2024-02-24'),
('https://picsum.photos/300?35', 'image', '2024-02-25'),
('https://picsum.photos/300?36', 'image', '2024-02-26'),
('https://picsum.photos/300?37', 'image', '2024-02-27'),
('https://picsum.photos/300?38', 'image', '2024-02-28'),
('https://picsum.photos/300?39', 'image', '2024-02-29'),
('https://picsum.photos/300?40', 'image', '2024-03-01');

---------------------------------------------------------
-- Post_Media
---------------------------------------------------------
INSERT INTO Post_Media (Posts_id, Media_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30),
(31,31),(32,32),(33,33),(34,34),(35,35),
(36,36),(37,37),(38,38),(39,39),(40,40);
