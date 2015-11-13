DROP TABLE UdacityQueries;
CREATE TABLE UdacityQueries(
   id     INT  NOT NULL PRIMARY KEY 
  ,Lesson INT  NOT NULL
  ,Node   INT  NOT NULL
  ,Title  VARCHAR(39) NOT NULL
  ,Query  VARCHAR(348) NOT NULL
);
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (1,1,1,'WARM UP - Chinook Query Playground','SELECT Composer, Name FROM Track WHERE Composer=''Van Halen'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (2,1,1,'WARM UP - Chinook Query Playground','SELECT Name FROM Track WHERE Composer=''AC/DC'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (3,1,1,'WARM UP - Chinook Query Playground','SELECT Composer, sum(Milliseconds) FROM Track WHERE Composer=''Johann Sebastian Bach'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (4,1,1,'WARM UP - Chinook Query Playground','SELECT FirstName, LastName FROM Customer WHERE FirstName=''Phil'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (5,1,1,'WARM UP - Chinook Query Playground','SELECT FirstName, LastName, Title, Birthdate FROM Employee;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (6,1,1,'WARM UP - Chinook Query Playground','SELECT Composer, Name FROM Track WHERE Composer = ''Stevie Ray Vaughan'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (7,1,1,'WARM UP - Chinook Query Playground','SELECT Composer, Name FROM Track WHERE Composer = ''Jimi Hendrix'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (8,1,2,'WARM UP - Translate Query #1','SELECT min(Total), max(Total), avg(Total) FROM Invoice WHERE BillingCountry=''Germany'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (9,1,3,'WARM UP - Translate Query #2','SELECT Composer, sum(Milliseconds) FROM Track WHERE Composer=''Wolfgang Amadeus Mozart'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (10,1,5,'Welcome to SQLite','SELECT * FROM Invoice;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (11,1,5,'Welcome to SQLite','SELECT * FROM Employee;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (12,1,6,'Checking Setup','SELECT count(Name) FROM Track WHERE Composer=''U2'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (13,1,6,'Checking Setup','SELECT max(Total) FROM Invoice WHERE BillingCountry=''Spain'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (14,1,6,'Checking Setup','SELECT Title FROM Employee WHERE LastName=''Johnson'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (15,1,10,'SQL Scramble Top 10 Composers','SELECT Composer, COUNT(*) FROM Track GROUP BY Composer ORDER BY Count(*) DESC LIMIT 10;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (16,2,1,'WARM UP - Query Audit','SELECT Name FROM Track WHERE Composer=''AC/DC'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (17,2,1,'WARM UP - Query Audit','SELECT Composer, COUNT(*) FROM Track WHERE Composer=''Queen'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (18,2,2,'WARM UP - Query for Song Length','SELECT Name, Milliseconds FROM Track WHERE Milliseconds > 2500000 AND Milliseconds < 2600000 ORDER BY Milliseconds;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (19,2,3,'WARM UP - JOIN Artist to Album','SELECT Artist.Name, Album.Title FROM Album JOIN Artist WHERE Name = ''Iron Maiden'' OR Name = ''Amy Winehouse'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (20,2,4,'Countries with most Invoices','SELECT BillingCountry, COUNT(*) AS totalInvoices FROM Invoice GROUP BY BillingCountry ORDER BY totalInvoices DESC LIMIT 3;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (21,2,5,'Best Customer Emails','SELECT Customer.FirstName, Customer.LastName, Customer.Email, Invoice.Total FROM Customer JOIN  Invoice ON Customer.CustomerId = Invoice.CustomerId WHERE Invoice.Total > 10.00 ORDER BY Invoice.Total DESC;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (22,2,6,'Promoting Rock Music','SELECT Customer.FirstName, Customer.LastName, Customer.Email as Email, Genre.Name FROM Customer JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId JOIN Track ON Track.TrackId = InvoiceLine.TrackId JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name="Rock" GROUP BY Email;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (23,2,7,'Promotional Music Event','SELECT BillingCity, sum(Total) as Total FROM Invoice GROUP BY BillingCity ORDER BY Total DESC LIMIT 1;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (24,2,8,'Top City Favorite Music','SELECT Invoice.BillingCity, Genre.Name, COUNT(Genre.Name) FROM Invoice JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId JOIN Track ON Track.TrackId = InvoiceLine.TrackId JOIN Genre ON Track.GenreId = Genre.GenreId WHERE BillingCity = "Prague" GROUP BY Genre.Name ORDER BY COUNT(Genre.Name) DESC LIMIT 3;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (25,2,9,'Getting Musicians','SELECT Artist.Name as Artist, COUNT(Genre.Name) as count FROM Genre  JOIN Track ON Genre.GenreId = Track.GenreId JOIN Album ON Track.AlbumId = Album.AlbumId JOIN Artist ON Album.ArtistId = Artist.ArtistId WHERE Genre.Name = ''Rock'' GROUP BY Artist ORDER BY count DESC LIMIT 10;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (26,2,10,'Heading to France','SELECT Invoice.BillingCity, Genre.Name, COUNT(Genre.Name) FROM Invoice JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId JOIN Track ON Track.TrackId = InvoiceLine.TrackId JOIN Genre ON Track.GenreId = Genre.GenreId WHERE BillingCountry = "France" GROUP BY Genre.Name ORDER BY Invoice.BillingCity, COUNT(Genre.Name) DESC;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (27,3,1,'WARM UP - Sum Top 5 Subquery','SELECT sum(total) FROM (SELECT COUNT(*) AS total FROM Invoice GROUP BY BillingCountry ORDER BY total DESC LIMIT 5);');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (28,3,2,'WARM UP - Invoice Above Average','SELECT BillingCity, BillingState, BillingCountry, Total FROM Invoice, (SELECT avg(Total) as average FROM Invoice) as subquery WHERE Total > average;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (29,3,3,'WARM UP - JOIN to Subquery','SELECT FirstName, LastName, BillingCity, BillingState, BIllingCountry, Total FROM Invoice JOIN Customer, (SELECT avg(Total) AS average FROM Invoice) AS subuery WHERE Total > average;');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (30,3,4,'CREATE InvoiceLine','CREATE TABLE [Album] ([AlbumId] INTEGER PRIMARY KEY, [Title] TEXT, [ArtistId] INTEGER, FOREIGN KEY ([ArtistId]) REFERENCES [Artist] ([ArtistId]) );');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (31,3,4,'CREATE InvoiceLine','CREATE TABLE [InvoiceLine] ( [InvoiceLineId] INTEGER PRIMARY KEY, [InvoiceId] INTEGER,  [TrackId] INTEGER, [UnitPrice] REAL, [Quantity] INTEGER, FOREIGN KEY ([InvoiceId]) REFERENCES [Invoice] ([InvoiceId]) FOREIGN KEY ([TrackId]) REFERENCES [Track] ([TrackId]) );');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (32,3,8,'Local Query - JOIN MediaType and Track','SELECT count(MediaType.Name), Genre.Name FROM Track JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId JOIN Genre ON Track.GenreId = Genre.GenreId WHERE MediaType.Name = ''MPEG audio file'' AND Genre.Name = ''Pop'';');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (33,3,9,'Local Subquery - Invoice Above Average','SELECT count(DISTINCT Email) FROM Customer JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId JOIN Track ON Track.TrackId = InvoiceLine.TrackId JOIN Genre ON Track.GenreId = Genre.GenreId WHERE Genre.Name = "Jazz";');
INSERT INTO UdacityQueries(id,Lesson,Node,Title,Query) VALUES (34,3,10,'Local Query - Below Average Song Length','SELECT Genre.Name, COUNT(Genre.Name) FROM Track JOIN Genre ON Track.GenreId = Genre.GenreId, (SELECT avg(Milliseconds) AS average FROM Track) as subquery WHERE Milliseconds < average GROUP BY Genre.Name ORDER BY COUNT(Genre.Name) DESC LIMIT 1;');
