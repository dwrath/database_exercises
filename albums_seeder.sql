USE bigfoot_test_db;
TRUNCATE bigfoot_test_db.albums;

INSERT INTO albums (name, artist, release_date, genre, sales)
    VALUES
        ('The Dark Side of the Moon', 'Pink Floyd', 1973, 'Progressive rock, psychedelic rock', 45),
        ('Back in Black', 'AC/DC', 1980, 'Hard rock', 50),
        ('Their Greatest Hits (1971-1975)', 'Eagles', 1976, 'Rock, soft rock, folk rock', 42),
        ('Thriller', 'Michael Jackson', 1982, 'Pop, post-disco, funk, rock', 65),
        ('The Bodyguard', 'Whitney Houston / Various artists', 1992, 'Soundtrack/R&B, soul, pop, rock', 44),
        ('Saturday Night Fever', 'Bee Gees / Various artists', 1977, 'Disco', 40),
        ('Rumours', 'Fleetwood Mac', 1977, 'Soft rock, pop rock', 40),
        ('Greatest Hits', 'Elton John', 1974, 'Pop, rock', 34),
        ('Back to Black', 'Amy Winehouse', 2006, 'Soul, R&B, vocal jazz', 30),
        ('Come On Over', 'Shania Twain', 1997, 'Country, pop', 29),
        ('Led Zeppelin IV', 'Led Zeppelin', 1971, 'Hard rock, heavy metal, folk rock', 29),
        ('Jagged Little Pill', 'Alanis Morissette', 1995, 'Alternative rock, post-grunge', 24),
        ('Bat Out of Hell', 'Meat Loaf', 1977, 'Hard rock, glam rock, progressive rock', 20),
        ('Come Away With Me', 'Norah Jones', 2002, 'Pop, jazz', 20),
        ('Speakerboxxx/The Love Below', 'Outkast', 2003, 'Hip hop, funk, soul, rock', 20),
        ('Hybrid Theory', 'Linkin Park', 2000, 'Alternative rock, nu metal, rap rock', 20),
        ('No Fences', 'Garth Brooks', 1990, 'Country', 17),
        ('The Wall', 'Pink Floyd', 1979, 'Progressive rock, art rock', 17),
        ('Dirty Dancing', 'Various artists', 1987, 'Pop rock, R&B, pop, soul', 17),
        ('Whitney Houston', 'Whitney Houston', 1985, 'Pop, Soul', 29.0);