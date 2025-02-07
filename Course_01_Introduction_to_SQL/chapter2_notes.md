# SQL Querying Notes

## Querying the `books` Table

---

-- Return all titles from the books table

```sql
SELECT title FROM books;
```

-- Select title and author from the books table

```sql
SELECT title, author
FROM books;
```

-- Select all fields from the books table

```sql
SELECT *
FROM books;
```

## Making Queries DISTINCT

---

-- Select unique authors from the books table

```sql
SELECT DISTINCT author FROM books;
```

-- Select unique author and genre combinations from the books table

```sql
SELECT DISTINCT author, genre
FROM books;
```

## Aliasing (Renaming Columns for Clarity)

---

-- Alias author so that it becomes unique_author

```sql
SELECT DISTINCT author AS unique_author
FROM books;
```

-- Alias example in another table

```sql
SELECT FirstName AS Employee_Name, HireDate
FROM Employees;
```

## Viewing Queries (Virtual Tables)

---

-- Save the results of this query as a view called library_authors

```sql
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;
```

-- Create a view for employee details

```sql
CREATE VIEW employee_city AS
SELECT EmployeeID, Title, City
FROM Employees;
```

-- Select all columns from library_authors

```sql
SELECT * FROM library_authors;
```

## Limiting Results

---

-- Select the first 10 genres from books using PostgreSQL

```sql
SELECT genre
FROM books
LIMIT 10;
```

-- Select the first 10 records using SQL (alternative syntax)

```sql
SELECT genre
FROM books
TOP (10);
```

## Common Mistakes to Avoid

---

### Incorrect Syntax

#### ❌ Wrong:

```sql
SELECT author AS unique_author
FRPM books;
```

#### ✅ Correct:

```sql
SELECT author AS unique_author
FROM books;
```
