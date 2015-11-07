####################################################################################################
                                    OpenStreetMap Schema Design
####################################################################################################

'''NODES TAGS'''

CREATE TABLE [nodes_tags]
(
    [id] INTEGER, 
    [type] TEXT,
    [key] TEXT,
    [value] TEXT
);

####################################################################################################

'''NODES'''

CREATE TABLE [nodes]
(
    [id] INTEGER, 
    [lat] REAL,
    [long] REAL,
    [version] TEXT,
    [changeset] INTEGER,
    [timestamp] STRING,
    [user] STRING,
    [uid] INTEGER
);

####################################################################################################

'''WAYS NODES'''

CREATE TABLE [ways_nodes]

(
    [id] INTEGER, 
    [node_id] INTEGER,
    [position] INTEGER
);

####################################################################################################

'''WAYS TAGS'''

CREATE TABLE [ways_tags]
(
    [id] INTEGER, 
    [type] TEXT,
    [key] TEXT,
    [value] TEXT
);

####################################################################################################

'''NODES'''

CREATE TABLE [ways]
(
    [id] INTEGER, 
    [version] TEXT,
    [changeset] INTEGER,
    [timestamp] TEXT,
    [user] TEXT,
    [uid] INTEGER
);