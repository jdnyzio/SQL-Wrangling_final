CREATE TABLE [nodes_tags]
(
    [id] INTEGER, 
    [type] TEXT,
    [key] TEXT,
    [value] TEXT,
    FOREIGN KEY ([id]) REFERENCES [way] ([id]) 
);

CREATE TABLE [nodes]
(
    [id] INTEGER PRIMARY KEY, 
    [lat] REAL,
    [long] REAL,
    [version] TEXT,
    [changeset] INTEGER,
    [timestamp] STRING,
    [user] STRING,
    [uid] INTEGER,
    FOREIGN KEY ([uid]) REFERENCES [way] ([uid]) 
);


CREATE TABLE [ways_nodes]

(
    [id] INTEGER, 
    [node_id] INTEGER,
    [position] INTEGER,
    FOREIGN KEY ([id]) REFERENCES [way] ([id]) 
);


CREATE TABLE [ways_tags]
(
    [id] INTEGER, 
    [type] TEXT,
    [key] TEXT,
    [value] TEXT,
    FOREIGN KEY ([id]) REFERENCES [way] ([id]) 
);

CREATE TABLE [way]
(
    [id] INTEGER PRIMARY KEY, 
    [version] TEXT,
    [changeset] INTEGER,
    [timestamp] TEXT,
    [user] TEXT,
    [uid] INTEGER,
    FOREIGN KEY ([uid]) REFERENCES [nodes] ([uid]) 
);


.mode csv
.import nodes_tags.csv nodes_tags
.import nodes.csv nodes
.import way.csv way
.import ways_nodes.csv ways_nodes
.import ways_tags.csv ways_tags

'''JOIN NODES AND WAYS'''

SELECT * FROM way 
JOIN ways_tags ON way.id = ways_tags.id 
JOIN ways_nodes ON way.id = ways_nodes.id;

SELECT * FROM nodes
JOIN nodes_tags ON nodes.id = nodes_tags.id;

