# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills(
    ID int not null,
    name varchar(255) not null,
    description varchar(255),
    tag varchar(255),
    url varchar(255),
    time_commitment int,
    PRIMARY KEY (ID)
);



# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT into skills(ID, name, description, tag, url, time_commitment) values
    (1, "loco", "wild card, will stab someone", "Skill 1", "https:kekekekekekekekekekek.org", 20),
    (2, "fires people", "really good at firing people quickly and efficiently", "Skill 2", "https:kkdldkkfhscislidlifelihkjhs.com", 10000),
    (3, "yells", "really good at yelling", "Skill 3", "https://skjdbbgksoiegbsdj@yahoo.com", 100),
    (4, "high five", "gives powerful high fives", "Skill 4", "https:heyyo.com", 1),
    (5, "blows", "can blow out candles", "Skill 5", "https:my.vcu.edu", 99999999),
    (6, "laugh bad", "laughs like a banshee and laughs at all the wrong times... like at funerals", "Skill 6", "https:mrpoopybutthole&birdperson.com", 0),
    (7, "laugh good", "laughs in a normal way and laughs when appropriate", "Skill 7", "https:virginia.edu", 1),
    (8, "teach", "he do the teach on monday and wedday", "Skill 8", "https://sdafljsdafklsahgf@gmail.com", 3);




# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int,
    people_last_name varchar(256) NOT NULL,
    first_name varchar(256),
    email varchar(256),
    linkedin_url varchar(256),
    headshot_url varchar(256),
    discord_handle varchar(256),
    brief_bio varchar(256),
    date_joined DATE not NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (people_id,people_last_name, first_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) values 
    (1, 'Person 1', "Gargabargazor", "Gargabargazor@LavaLair.net", "https://www.linkedin.com/in/gargabargazor-lauglair", "DNU (picture of him eating a human alive)","GigaGuffaw", "from the planet DEHTH-AK47. He will destory all humans", "2023-11-15"),
    (2, "Person 2", "Yeb", "Yeb@yebyebye.com", "https://www.linkedin.com/in/yebus", "https://picsum.photos/200/300?random=1", "MinecrafterGodYeb", "Is a fluffy dog", "2023-11-15"),
    (3, "Person 3", "Sleb", "SlebSnackAttack@gmail.com", "https://www.linkedin.com/in/sleb-snackattack", "https://picsum.photos/200/300?random=1","VortexVandal", "slapped a russian one time and regretted it", "2023-11-15"),
    (4, "Person 4", "Ricky", "RickyTickyTavi@TickleTown.org", "https://www.linkedin.com/in/-tickytavi", "https://picsum.photos/200/300?random=1","ShadowTickler", "starts sweating around the police", "2023-11-15"),
    (5, "Person 5", "Hyeb", "HyebAndSeek@FunnyMail.org", "https://www.linkedin.com/in/hyeb-andseek", "https://picsum.photos/200/300?random=1","VexHexe", "norweigan", "2023-11-15"),
    (6, "Person 6", "Miguel", "MiguelLaughs@mirthmail.com", "https://www.linkedin.com/in/miguel-laughs", "https://picsum.photos/200/300?random=1","ZenithZany", "Fisherman", "2023-11-15"),
    (7, "Person 7", "Rick", "RickRollin@emailRollercoaster.com", "https://www.linkedin.com/in/rick-rollin", "https://picsum.photos/200/300?random=1","AbyssAssassin", "has mommy issues", "2023-11-15"),
    (8, "Person 8", "Jeb", "Jeb@JebJokes.com", "https://www.linkedin.com/in/jeb-jebjokes", "https://picsum.photos/200/300?random=1","ChaosJester", "Litterally made minecraft", "2023-11-15"),
    (9, "Person 9", "Chungus", "ChungusCheer@emailChuckles.net", "https://www.linkedin.com/in/chungus-cheer", "https://picsum.photos/200/300?random=1","LaughLunatic", "just a lil guy", "2023-11-15"),
    (10, "Person 10", "Biggus Dickus", "Incontinentia@Rome.wld", "https://www.linkedin.com/in/Biggus-Dickus", "https://picsum.photos/200/300?random=1","HmMmMmMmMmMmMm", "He has a wife you know...", "2023-11-15");



# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    ID int not null auto_increment,
    skills_id int not null,
    people_id int not null,
    date_acquired date not null,
    primary KEY (ID),
    FOREIGN KEY (skills_id) References skills(ID),
    FOREIGN KEY (people_id) References people(people_id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
INSERT INTO peopleskills (skills_id, people_id, date_acquired) values
    (1, 1, "2023-11-15"),
    (3, 1, "2023-11-15"),
    (6, 1, "2023-11-15"),
    (3, 2, "2023-11-15"),
    (4, 2, "2023-11-15"),
    (5, 2, "2023-11-15"),
    (1, 3, "2023-11-15"),
    (5, 3, "2023-11-15"),
    (3, 5, "2023-11-15"),
    (6, 5, "2023-11-15"),
    (2, 6, "2023-11-15"),
    (3, 6, "2023-11-15"),
    (4, 6, "2023-11-15"),
    (3, 7, "2023-11-15"),
    (5, 7, "2023-11-15"),
    (6, 7, "2023-11-15"),
    (1, 8, "2023-11-15"),
    (3, 8, "2023-11-15"),
    (5, 8, "2023-11-15"),
    (6, 8, "2023-11-15"),
    (2, 9, "2023-11-15"),
    (5, 9, "2023-11-15"),
    (6, 9, "2023-11-15"),
    (1, 10, "2023-11-15"),
    (4, 10, "2023-11-15"),
    (5, 10, "2023-11-15");


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles


Create Table roles(
    ID int not null,
    name varchar(255),
    sort_priority int,
    primary Key(Id)
);



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles(ID, name, sort_priority) values
    (1, "Designer", 10),
    (2, "Developer", 20),
    (3, "Recruit", 30),
    (4, "Team Lead", 40),
    (5, "Boss", 50),
    (6, "Mentor", 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

Create Table peopleroles(
    ID int not null auto_increment,
    people_id int not null,
    role_id int not null,
    date_assigned date not null,
    primary key(ID),
    foreign Key (people_id) References people(people_id),
    foreign key (role_id) References roles(ID)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

insert into peopleroles(people_id, role_id, date_assigned) values
    (1, 2, "2023-11-15"),
    (2, 5, "2023-11-15"),
    (2, 6, "2023-11-15"),
    (3, 2, "2023-11-15"),
    (3, 4, "2023-11-15"),
    (4, 3, "2023-11-15"),
    (5, 3, "2023-11-15"),
    (6, 2, "2023-11-15"),
    (6, 1, "2023-11-15"),
    (7, 1, "2023-11-15"),
    (8, 1, "2023-11-15"),
    (8, 4, "2023-11-15"),
    (9, 2, "2023-11-15"),
    (10, 2, "2023-11-15"),
    (10, 1, "2023-11-15");

