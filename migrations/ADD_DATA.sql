--           --
-- DEMO DATA --
--           --


-- Create 5 users
INSERT INTO tbl_user (id, email, password, firstname, lastname, city, state, zip, genre, artist_work,type)
VALUES
(82334, 'BJ@bobbiejo.io', 'pass123', 'Aurora', 'McCartney', 'Nashville', 'TN', '37205', 'country', 'Bobbie Gentry', 1),
(33271, 'hello@google.io', 'pass123', 'Kevin', 'Moore', 'New York', 'NY', '30001', 'pop rock', 'Rolling Stones', 1),
(12376, 'mavis@wemakemusic.com', 'pass123', 'Mavis', 'Rubin', 'Nashville', 'TN', '37245', 'country', 'Rolling Rocks',1),
(58294, 'cody@wemakemusic.com', 'pass123', 'Cody', 'Howler', 'Nashville', 'TN', '37205', 'rock', 'Destroy Destroy Destroy',1),
(98153, 'Harry@Remastered.music', 'pass123', 'Harold', 'Heck', 'Nashville', 'TN', '37245', 'hip hop', 'Juicy J',1);

INSERT INTO `producers`(`user_id`, `philosophy`, `genres`, `skills`, `price`)
VALUES
(82334, 'loud bass, heavy drums','country', 'deep synth remixing', 69),
(33271, 'iterative development', 'pop rock', 'drum machine', 200),
(12376, '60 bpm and loud guitar', 'country', 'deep technical knowledge, sound mixing',50),
(58294, 'add some orchestra', 'rock', 'big band mixin', 175),
(98153, '200 bpm. Think Lupe Fiasco', 'hip hop', '808s and hearbreak', 225 );
