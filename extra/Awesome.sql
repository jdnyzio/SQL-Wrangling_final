CREATE TABLE Udacious(
   problemSet INTEGER  NOT NULL PRIMARY KEY 
  ,node   INTEGER  NOT NULL
  ,queryId INTEGER  NOT NULL
  ,title_ VARCHAR(34) NOT NULL
  ,sql    VARCHAR(10) NOT NULL
  ,statement VARCHAR(37)
);



INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,1,'Chinook Query Playground','SELECT','Composer, Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,1,'Chinook Query Playground','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,1,'Chinook Query Playground','WHERE','Composer=''Van Halen'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,2,'Chinook Query Playground','SELECT','Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,2,'Chinook Query Playground','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,2,'Chinook Query Playground','WHERE','Composer=''AC/DC'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,3,'Chinook Query Playground','SELECT','Composer, sum(Milliseconds)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,3,'Chinook Query Playground','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,3,'Chinook Query Playground','WHERE','Composer=''Johann Sebastian Bach'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,4,'Chinook Query Playground','SELECT','FirstName, LastName');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,4,'Chinook Query Playground','FROM','Customer');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,4,'Chinook Query Playground','WHERE','FirstName=''Phil'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,5,'Chinook Query Playground','SELECT','FirstName, LastName, Title, Birthdate');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,5,'Chinook Query Playground','FROM','Employee;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,6,'Chinook Query Playground','SELECT','Composer, Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,6,'Chinook Query Playground','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,6,'Chinook Query Playground','WHERE','Composer = ''Stevie Ray Vaughan'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,7,'Chinook Query Playground','SELECT','Composer, Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,7,'Chinook Query Playground','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,1,7,'Chinook Query Playground','WHERE','Composer = ''Jimi Hendrix'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,2,8,'Translate Query #1','SELECT','min(Total), max(Total), avg(Total)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,2,8,'Translate Query #1','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,2,8,'Translate Query #1','WHERE','BillingCountry=''Germany'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,3,9,'Translate Query #2','SELECT','Composer, sum(Milliseconds)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,3,9,'Translate Query #2','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,3,9,'Translate Query #2','WHERE','Composer=''Wolfgang Amadeus Mozart'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,5,10,'Welcome to SQLite','SELECT','*');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,5,10,'Welcome to SQLite','FROM','Invoice;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,5,11,'Welcome to SQLite','SELECT','*');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,5,11,'Welcome to SQLite','FROM','Employee;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,12,'Checking Setup','SELECT','count(Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,12,'Checking Setup','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,12,'Checking Setup','WHERE','Composer=''U2'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,13,'Checking Setup','SELECT','max(Total)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,13,'Checking Setup','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,13,'Checking Setup','WHERE','BillingCountry=''Spain'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,14,'Checking Setup','SELECT','Title');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,14,'Checking Setup','FROM','Employee');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,6,14,'Checking Setup','WHERE','LastName=''Johnson'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','SELECT','Composer, COUNT(*)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','GROUP BY','Composer');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','ORDER BY','Count(*)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','DESC',NULL);
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (1,10,15,'Top 10 Composers','LIMIT','10;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,16,'Query Audit','SELECT','Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,16,'Query Audit','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,16,'Query Audit','WHERE','Composer=''AC/DC'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,17,'Query Audit','SELECT','Composer, COUNT(*)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,17,'Query Audit','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,1,17,'Query Audit','WHERE','Composer=''Queen'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,2,18,'Query for Song Length','SELECT','Name, Milliseconds');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,2,18,'Query for Song Length','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,2,18,'Query for Song Length','WHERE','Milliseconds > 2500000');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,2,18,'Query for Song Length','AND','Milliseconds < 2600000');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,2,18,'Query for Song Length','ORDER BY','Milliseconds;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,3,19,'JOIN Artist to Album','SELECT','Artist.Name, Album.Title');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,3,19,'JOIN Artist to Album','FROM','Album');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,3,19,'JOIN Artist to Album','JOIN','Artist');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,3,19,'JOIN Artist to Album','WHERE','Name = ''Iron Maiden''');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,3,19,'JOIN Artist to Album','OR','Name = ''Amy Winehouse'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','SELECT','BillingCountry, COUNT(*) AS totalInvoices');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','GROUP BY','BillingCountry');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','ORDER BY','totalInvoices');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','DESC',NULL);
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,4,20,'Countries with most Invoices','LIMIT','3;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','SELECT','Customer.FirstName, Customer.LastName, Customer.Email, Invoice.Total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','FROM','Customer');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','JOIN','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','ON','Customer.CustomerId = Invoice.CustomerId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','WHERE','Invoice.Total > 10.00');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','ORDER BY','Invoice.Total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,5,21,'Best Customer Emails','DESC',';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','SELECT','Customer.FirstName, Customer.LastName, Customer.Email as Email, Genre.Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','FROM','Customer');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','JOIN','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','ON','Customer.CustomerId = Invoice.CustomerId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','JOIN','InvoiceLine');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','ON','Invoice.InvoiceId = InvoiceLine.InvoiceId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','JOIN','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','ON','Track.TrackId = InvoiceLine.TrackId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','ON','Track.GenreId = Genre.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','WHERE','Genre.Name="Rock"');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,6,22,'Promoting Rock Music','GROUP BY','Email;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,7,23,'Planning Music Festival','SELECT','BillingCity, sum(Total) as Total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,7,23,'Planning Music Festival','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,7,23,'Planning Music Festival','GROUP BY','BillingCity');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,7,23,'Planning Music Festival','ORDER BY','Total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,7,23,'Planning Music Festival','DESC','LIMIT 1;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','SELECT','Invoice.BillingCity, Genre.Name, COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','JOIN','InvoiceLine');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','ON','Invoice.InvoiceId = InvoiceLine.InvoiceId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','JOIN','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','ON','Track.TrackId = InvoiceLine.TrackId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','ON','Track.GenreId = Genre.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','WHERE','BillingCity = "Prague"');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','GROUP BY','Genre.Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','ORDER BY','COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','DESC',NULL);
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,8,24,'Top City Favorite Music','LIMIT','3;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','SELECT','Artist.Name as Artist, COUNT(Genre.Name) as count');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','FROM','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','JOIN','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','ON','Genre.GenreId = Track.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','JOIN','Album');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','ON','Track.AlbumId = Album.AlbumId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','JOIN','Artist');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','ON','Album.ArtistId = Artist.ArtistId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','WHERE','Genre.Name = ''Rock''');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','GROUP BY','Artist');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','ORDER BY','count');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,9,25,'Getting Musicians','DESC','LIMIT 10;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','SELECT','Invoice.BillingCity, Genre.Name, COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','JOIN','InvoiceLine');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','ON','Invoice.InvoiceId = InvoiceLine.InvoiceId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','JOIN','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','ON','Track.TrackId = InvoiceLine.TrackId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','ON','Track.GenreId = Genre.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','WHERE','BillingCountry = "France"');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','GROUP BY','Genre.Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','ORDER BY','Invoice.BillingCity, COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (2,10,26,'Heading to France','DESC',';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','SELECT','sum(total)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','FROM','(SELECT COUNT(*) AS total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','GROUP BY','BillingCountry');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','ORDER BY','total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','DESC',NULL);
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,27,'Sum Top 5 Subquery','LIMIT','5);');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,2,28,'Invoice Above Average','SELECT','BillingCity, BillingState, BillingCountry, Total (');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,2,28,'Invoice Above Average','FROM','Invoice,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,2,28,'Invoice Above Average','SELECT','avg(Total) as average');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,2,28,'Invoice Above Average','FROM','Invoice) as subquery');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,2,28,'Invoice Above Average','WHERE','Total > average;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','SELECT','FirstName, LastName, BillingCity, BillingState, BIllingCountry, Total');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','FROM','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','JOIN','Customer, (');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','SELECT','avg(Total) AS average');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','FROM','Invoice) AS subuery');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,3,29,'JOIN to Subquery','WHERE','Total > average;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,30,'CREATE InvoiceLine','CREATE TABLE','[Album] (');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,30,'CREATE InvoiceLine','[AlbumId]','INTEGER PRIMARY KEY,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,30,'CREATE InvoiceLine','[Title]','TEXT,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,30,'CREATE InvoiceLine','[ArtistId]','INTEGER,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,30,'CREATE InvoiceLine','FOREIGN KEY ([ArtistId])','REFERENCES [Artist] ([ArtistId]) );');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','CREATE TABLE','[InvoiceLine] (');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','[InvoiceLineId]','INTEGER PRIMARY KEY,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','[InvoiceId]','INTEGER,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','[TrackId]','INTEGER,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','[UnitPrice]','REAL,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','[Quantity]','INTEGER,');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','FOREIGN KEY ([InvoiceId])','REFERENCES [Invoice] ([InvoiceId])');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,4,31,'CREATE InvoiceLine','FOREIGN KEY ([TrackId])','REFERENCES [Track] ([TrackId]) );');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','SELECT','count(MediaType.Name), Genre.Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','JOIN','MediaType');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','ON','Track.MediaTypeId = MediaType.MediaTypeId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','ON','Track.GenreId = Genre.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','WHERE','MediaType.Name = ''MPEG audio file''');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,8,32,'JOIN MediaType and Track','AND','Genre.Name = ''Pop'';');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','SELECT','count(DISTINCT Email)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','FROM','Customer');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','JOIN','Invoice');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','ON','Customer.CustomerId = Invoice.CustomerId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','JOIN','InvoiceLine');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','ON','Invoice.InvoiceId = InvoiceLine.InvoiceId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','JOIN','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','ON','Track.TrackId = InvoiceLine.TrackId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','ON','Track.GenreId = Genre.GenreId');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,9,33,'Invoice Above Average','WHERE','Genre.Name = "Jazz";');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','SELECT','Genre.Name, COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','FROM','Track');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','JOIN','Genre');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','ON','Track.GenreId = Genre.GenreId, (');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','SELECT','avg(Milliseconds) AS average');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','FROM','Track) as subquery');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','WHERE','Milliseconds < average');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','GROUP BY','Genre.Name');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','ORDER BY','COUNT(Genre.Name)');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','DESC',NULL);
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,10,34,'Below Average Song Length','LIMIT','1;');
INSERT INTO Udacious(problemSet,node,queryId,title_,sql,statement) VALUES (3,1,1,'Udacity Students Rock!','Congratulations',"You're awesome!", "Thanks for learning SQL!");