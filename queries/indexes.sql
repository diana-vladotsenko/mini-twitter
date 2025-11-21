---------------------------------------------------------
-- INDEKSTID
---------------------------------------------------------

-- Kiire postituste otsing kasutaja järgi
CREATE INDEX IX_Posts_Users_id ON Posts(Users_id);

-- Kiire meedia laadimine ühe postituse kohta
CREATE INDEX IX_Post_Media_Posts_id ON Post_Media(Posts_id);

-- Kiire kommentaaride laadimine ühe postituse kohta
CREATE INDEX IX_Comments_Posts_id ON Comments(Posts_id);

-- Kiire hashtagide laadimine ühe postituse kohta
CREATE INDEX IX_Post_Hashtags_Posts_id ON Post_Hashtags(Posts_id);


