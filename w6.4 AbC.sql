SELECT FirstName, LastName, Suffix
FROM Person.Person
WHERE Suffix = 'Jr.';

CREATE NONCLUSTERED INDEX IX_Suffix_Person ON Person.Person (Suffix);

SELECT Name, ProductNumber, Color
FROM Production.Product
WHERE Color = 'Red';

CREATE SELECT 
    i.name AS IndexName,
    i.type_desc AS IndexType,
    c.name AS ColumnName
FROM 
    sys.indexes i
JOIN 
    sys.index_columns ic ON i.object_id = ic.object_id AND i.index_id = ic.index_id
JOIN 
    sys.columns c ON ic.object_id = c.object_id AND c.column_id = ic.column_id
WHERE 
    OBJECT_NAME(i.object_id) = 'Product';

DROP INDEX IX_Suffix_Person ON Person.Person;

CREATE NONCLUSTERED INDEX IX_Suffix_Person ON Person.Person (Suffix);

CREATE NONCLUSTERED INDEX IX_Color_Product_v2 ON Production.Product (Color);
DROP INDEX IF EXISTS IX_Suffix_Person_v2 ON Person.Person;
CREATE NONCLUSTERED INDEX IX_Suffix_Person_v2 ON Person.Person (Suffix);

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'Person';

SELECT FirstName, LastName, Suffix
FROM Person.Person
WHERE Suffix = 'Jr.';

SELECT Name, ProductNumber, Color
FROM Production.Product
WHERE Color = 'Red';