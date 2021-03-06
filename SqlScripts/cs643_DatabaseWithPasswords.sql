USE [GameReviewWebsite_CS643]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 9/17/2014 6:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Author](
	[AuthorId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Genre] [nvarchar](150) NOT NULL,
	[Biography] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 9/17/2014 6:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[GameReviewId] [int] NOT NULL,
	[GamerId] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Game]    Script Date: 9/17/2014 6:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[GameId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[GameId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gamer]    Script Date: 9/17/2014 6:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gamer](
	[GamerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[AvatarUrl] [nvarchar](150) NOT NULL,
	[Biography] [nvarchar](4000) NOT NULL,
	[Password] [nvarchar](10) NOT NULL CONSTRAINT [DF_Gamer_Password]  DEFAULT ((123)),
 CONSTRAINT [PK_Gamer] PRIMARY KEY CLUSTERED 
(
	[GamerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GameReview]    Script Date: 9/17/2014 6:31:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameReview](
	[GameReviewId] [int] IDENTITY(1,1) NOT NULL,
	[GameId] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Content] [nvarchar](4000) NOT NULL,
	[Rating] [decimal](2, 1) NOT NULL,
 CONSTRAINT [PK_GameReview] PRIMARY KEY CLUSTERED 
(
	[GameReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Author] ON 

GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (1, N'Chris', N'FPS', N'Awesome Gamer that writes too much code!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (2, N'Chad', N'MMO', N'MMO expert with the drive and dedication to out game you all!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (3, N'ReviewBot', N'All', N'Bot that reviews games based on consensus.')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (4, N'Dictator Commander', N'RTS', N'Expert at military strategy but only from his own bedroom.')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (5, N'Annoying 14 yearold', N'First Person Shooters', N'I am way to young to be playng m rated games but i do anyway then i review them!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (7, N'Simulator Rick', N'Simulators', N'I love train simulator its epic!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (8, N'Billy the bomber', N'Flight Sim', N'Love dropping bombs on stuff but only in video games.')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (9, N'Sam of the shrine', N'RPG', N'I play so much RPGs I forgot my own name. (It''s not sam)')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (10, N'Sox', N'Indie', N'If it made any money I dont want to play it!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (11, N'Speedy Bob', N'Racing', N'I GO FAST')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (12, N'Slow Surgeon', N'Surgeon Sims', N'I cut them up and put them back together!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (13, N'Rick Roll Rogue', N'Rogue Like', N'Nevr gona give them up,never gona let them down. Until I out gear them!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (14, N'Cappin Pirate Yar', N'Pirate sim ', N'Arrr walk the virtual plank! Yee scarvy dawg!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (15, N'Simply Pvp', N'Pvp anything', N'I don''t pwn it unless its going to get mad when i do!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (16, N'Eponential Salvation', N'I must heeeeeeel youuu!', N'I am a healer with feelers')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (17, N'Dreaming of Clowns', N'Clown Horror', N'If it reminds you of the movie IT ill review it.')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (18, N'Moba Adoba', N'MOBAs', N'I love MOBAs and food!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (19, N'Fantasy Texter', N'Text Based Roguelikes', N'Time to type it in and get it done!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (20, N'Monopoly General ', N'Not bored of board games', N'Virtualized board games are my thing!')
GO
INSERT [dbo].[Author] ([AuthorId], [Name], [Genre], [Biography]) VALUES (21, N'WhySoSerious', N'Bat Games', N'Just cant get enough bats')
GO
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (1, 1, 7, N'Big fast thrills.', N'Amazing game should def play.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (3, 1, 4, N'Only 8 hours.', N'Only 8 hours to end game!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (4, 1, 6, N'Fast Paced', N'For such a fast paced game, it still takes great strategy!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (5, 1, 9, N'PreOrder', N'I could never get this pre-ordered, so I didn''t buy it.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (9, 1, 11, N'Pancakes', N'Love to kill the first boss while eating pancakes.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (10, 11, 23, N'League Fest', N'I don''t enjoy the action of this style of game.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (11, 11, 24, N'Can''t hold the lane', N'I always get overun with minions at my lane!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (12, 11, 17, N'Amazing Graphics', N'Can''t get enough of the crisp graphics. Must be a god tier coder.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (13, 11, 5, N'No Load', N'My game won''t load. Not sure why.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (14, 11, 13, N'Payment Scam', N'The payment system to buy item is a scam.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (18, 20, 16, N'WOW OH WOW', N'Unlimited questing is the greatest!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (22, 20, 19, N'Daily Grind', N'You got that right! No Grinding Here!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (23, 20, 20, N'Indistinct Area', N'I don''t get the concept of this game due to the open world.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (26, 20, 7, N'Massless Sept', N'There is no key in the massless item chain.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (27, 20, 9, N'No Toc', N'I don''t want to TOC.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (28, 15, 11, N'Pirates!', N'I can''t believe its not real!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (29, 15, 22, N'Unbelievable', N'This game has amazing graphics on the computer!!!')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (31, 15, 4, N'Hay man!', N'Still love to jump into the hay after all these years.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (32, 15, 11, N'So Much fun', N'This much fun should be illegal.')
GO
INSERT [dbo].[Comment] ([CommentId], [GameReviewId], [GamerId], [Title], [Content]) VALUES (34, 15, 14, N'Past Due', N'The comments these days are too graphic.')
GO
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Game] ON 

GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (1, N'Destiny', N' MMOFPS with epic story and action.')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (2, N'World of Warcraft', N'Cause it will never die!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (3, N'Star Craft', N'RTS with spice')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (4, N'Ranomly generated android game', N'Review material for review bot!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (5, N'Planetary Annihilation', N'Epic interplanetary destruction')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (6, N'Sergon Simulator', N'Bloody simulator that communicates the difficulty of surguery')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (7, N'Diablo 3 ', N'Roguelike with taste')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (8, N'Train Simulator', N'Professionals love us!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (10, N'Dues Ex Machina', N'Your favoriate plot twist in a game! ')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (11, N'League of Legends', N'Moba for the populus')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (12, N'Sam and Max', N'Adventure!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (13, N'Gauntlet', N'4 Player Roguelike!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (14, N'Mine Craft', N'We just made 2 billion dollars!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (15, N'Assassins creed 4', N'Glorified pirate sim simply put!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (16, N'IT the game', N'Your best choise for clown horror')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (17, N'Ned for Speed', N'Ned really likes to race!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (18, N'Mario World', N'Mario based RPG')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (19, N'Board game package plus!', N'Your favorite board games in one huge package!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (20, N'Clash of Clans', N'How wil you review this? I am a cell phone game!')
GO
INSERT [dbo].[Game] ([GameId], [Title], [Description]) VALUES (21, N'Zork', N'Text Adventure')
GO
SET IDENTITY_INSERT [dbo].[Game] OFF
GO
SET IDENTITY_INSERT [dbo].[Gamer] ON 

GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (1, N'MMO Man', N'wow.com/wowy.jpg', N'MMO RULES!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (4, N'Fighter Fly', N'sigway.com/fighter.jpg', N'Like I Fikes.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (5, N'Combo Dan', N'combos.com/combo.jpg', N'aaabb combo time', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (6, N'CowHead', N'cow.com/head.jpg', N'I like cow simulator games.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (7, N'NumChuck', N'num.com/chuck.jpg', N'Computer hacking skills.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (9, N'DoubleDown', N'double.com/down.jpg', N'A double always pays his debts.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (11, N'SmackDaddy', N'smack.com/smack.jpg', N'Give them the smack down!!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (12, N'ThunderCat', N'cat.com/cat.jpg', N'Ready willing and able sir.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (13, N'DrWho', N'who.com/dr.jpg', N'What will popup next??', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (14, N'DictatorDom', N'domsantiago.com/dom.jpg', N'Those noobs won''t build it themselves!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (15, N'JohnSanborn', N'san.com/john.jph', N'Captain john has it all!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (16, N'Frank', N'frank.com/frank.jpg', N'Just please be Frank when speaking.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (17, N'CaptainCruisade', N'captain./com/captain.jpg', N'Will there be no pice in this world or the next?', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (19, N'DuckWarrior', N'duck.com/duck.jpg', N'No Duck? No Cluck!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (20, N'Zopeleton', N'zope.com/zope.jpg', N'I come from the plaent zopletania!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (21, N'Bingo9000', N'cant.com/bingo.jpg', N'Love me some Bingo boy.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (22, N'ExpressWay', N'drive.com/drive.jpg', N'Drive those games into the ground!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (23, N'Ordnance', N'ord.com/explosive.jpg', N'Don''t stop till you explode enough.', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (24, N'PrestigeWorldWide', N'world.com/prestige.jpg', N'PrestigeWorldWide Catering Truck is a must!', N'123')
GO
INSERT [dbo].[Gamer] ([GamerId], [Name], [AvatarUrl], [Biography], [Password]) VALUES (25, N'DoorHead', N'door.com/door.jpg', N'Peer into those doors one might not.', N'123')
GO
SET IDENTITY_INSERT [dbo].[Gamer] OFF
GO
SET IDENTITY_INSERT [dbo].[GameReview] ON 

GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (1, 1, 1, N'Destiny Is amazing!', N'First persoj shooter with a massively multiplayer online elemnt! This epic game has all the action you will ever need and for all you stat junkies out there you will have to play this. Your stats will effect how your cooldowns help you blow stuff up! ', CAST(4.9 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (3, 11, 2, N'LOL', N'Its time to praise your favorite MOBS but I give it only a 3.5 since everyone in the game hates how I feed the enemy!', CAST(3.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (4, 4, 3, N'Great game! 5.0 must download! ', N'Pay the 99$ its woth it! please upvote this rview. Also buy coke its amazing!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (5, 5, 4, N'Plannets will fall', N'This game is dope, your gong to freak when you see destruction on this scale. Definetly work the new price of 30$ cant wait to see how the newbs fall when we play!', CAST(4.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (6, 14, 5, N'OMG I hate this!', N'Mine craft is the best gsme ever but people who play it are lame! Stop bringing up my age! I dont whine!', CAST(1.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (7, 8, 7, N'I love trains and simulators!', N'Your in for a treat!', CAST(4.7 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (8, 5, 8, N'Bomb those planets!', N'Great bombing, No love for the other stuff.', CAST(3.5 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (10, 13, 9, N'SO RPG VERY ROGUE', N'This was good but not enough role playing in the game. So much gme tho. 2.2 for good effort', CAST(2.2 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (11, 20, 10, N'SO Indie Very Money!', N'This game was cool before they made tons of money!!', CAST(3.6 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (14, 17, 11, N'Ned Is SOOOO FAST', N'Fast Ned is the best. Ned for Speed is top game Raete ++', CAST(4.9 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (15, 6, 12, N'Blood Is Epic', N'This sim is the best one out, I never thought there would be a game meant for me but here it is!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (16, 19, 20, N'Board Game Pack', N'This game has immense action that you won''t find anywhere else on the market. You should buy it now!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (17, 21, 19, N'Zork', N'The best typer out there. Typing skill has increased by 10 points! Oh man!!!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (18, 11, 18, N'League Of Legends', N'Why isn''t everyone playing this game? I can eat with a troll and smite with a jungler!', CAST(4.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (19, 16, 17, N'It the Game', N'In this world, nothing is fun. Thats why I play It the Game... To scare the life out of me!', CAST(3.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (20, 2, 16, N'WOW', N'I have to pay money every month to play an MMO??? Then it better be awesome! And it is; you can stroll as a troll and dive as an orc!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (21, 11, 15, N'League Of Legends', N'Go in the shower and turn on the cold water. THATS how much I''m screaming about League of Legends. This game has it all, lanes, teams, partners, water!', CAST(5.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (22, 15, 14, N'Assassin''s Creed 4', N'Pirates! Pirates! I got to drive a boat with efforless controler squeezing eeeeeezzzz. Amazing graphics! And immersive gameplay.', CAST(4.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (23, 12, 13, N'Sam and Max', N'Garbage game. No sneaky sneaky at all. Just a big white rabbit. Atleast it was first person.', CAST(1.0 AS Decimal(2, 1)))
GO
INSERT [dbo].[GameReview] ([GameReviewId], [GameId], [AuthorId], [Title], [Content], [Rating]) VALUES (24, 8, 11, N'Trains United', N'Just driving a train around is not my thing. But, this one allowed great physics, so I love it!.', CAST(4.0 AS Decimal(2, 1)))
GO
SET IDENTITY_INSERT [dbo].[GameReview] OFF
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Gamer] FOREIGN KEY([GamerId])
REFERENCES [dbo].[Gamer] ([GamerId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Gamer]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_GameReview] FOREIGN KEY([GameReviewId])
REFERENCES [dbo].[GameReview] ([GameReviewId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_GameReview]
GO
ALTER TABLE [dbo].[GameReview]  WITH CHECK ADD  CONSTRAINT [FK_GameReview_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
GO
ALTER TABLE [dbo].[GameReview] CHECK CONSTRAINT [FK_GameReview_Author]
GO
ALTER TABLE [dbo].[GameReview]  WITH CHECK ADD  CONSTRAINT [FK_GameReview_Game] FOREIGN KEY([GameId])
REFERENCES [dbo].[Game] ([GameId])
GO
ALTER TABLE [dbo].[GameReview] CHECK CONSTRAINT [FK_GameReview_Game]
GO
ALTER TABLE [dbo].[GameReview]  WITH CHECK ADD  CONSTRAINT [CK_GameReview_Rating_Between_0And5] CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO
ALTER TABLE [dbo].[GameReview] CHECK CONSTRAINT [CK_GameReview_Rating_Between_0And5]
GO
