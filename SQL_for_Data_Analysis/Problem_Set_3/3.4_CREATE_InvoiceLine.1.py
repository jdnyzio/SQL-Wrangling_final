##  After all the success promoting your music tour last section, 
##  a new friend has asked to partner up and build your own music website!
##  You'll need to rebuild your own database and import the data to your new system.
##  Let's start by building some of the tables you're already familiar with.

##  Let's first take a closer look at how to build and populate your local database.
##  The box below shows the Album table schema including Primary and Foreign Keys.
##  Have a look at this table and the CREATE TABLE statement below to see how they relate.

'''
######################################################################
#                         Table: Album                               #
######################################################################
+--------------------+---------------+-----------------+--------------+
|      Columns       |   Data Type   |    Primary Key  |  Foreign Key |
+====================+===============+=================+==============+ 
|      AlbumId           INTEGER            YES              NO       |
|      Title             TEXT               NO               NO       |
|      ArtistId          INTEGER            NO               YES      |
|      UnitPrice         REAL               NO               NO       |
|      Quantity          INTEGER            NO               NO       |
+====================+===============+=================+==============+ 

---EXAMPLE---

CREATE TABLE [Album]
(
    [AlbumId] INTEGER PRIMARY KEY,
    [Title] TEXT,
    [ArtistId] INTEGER,
    FOREIGN KEY ([ArtistId]) REFERENCES [Artist] ([ArtistId]) 
);

'''
##  See if you can use this example with the information below to help you construct your own table.
##  When you're ready, run you query to CREATE and populate the InvoiceLine table using data from the 
##  InvoiceLine.sql file. 

QUERY='''
'''

'''
######################################################################
#                         Table: InvoiceLine                         #
######################################################################
+--------------------+---------------+-----------------+--------------+
|      Columns       |   Data Type   |    Primary Key  |  Foreign Key |
+====================+===============+=================+==============+ 
|      InvoiceLineId     INTEGER            YES              NO       |
|      InvoiceId         INTEGER            NO               YES      |
|      TrackId           INTEGER            NO               YES      |
|      UnitPrice         REAL               NO               NO       |
|      Quantity          INTEGER            NO               NO       |
+====================+===============+=================+==============+ 
'''


