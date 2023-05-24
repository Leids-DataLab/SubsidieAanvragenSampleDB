-- Onderstaande statements moet je allemaal apart draaien.

-- Dit statement draai je op de master database.
CREATE LOGIN readonlylogin WITH password='ZET HIER ZELF EEN GOED WACHTWOORD';

-- De staments hieronder draai je op de subsidie-aanvragen database.
CREATE USER readonlyuser FROM LOGIN readonlylogin;

EXEC sp_addrolemember 'db_datareader', 'readonlyuser';

