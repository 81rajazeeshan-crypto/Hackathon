-- Query 05: Indus Weave HR Analytics
-- Solved according to case study requirements for question 5
SELECT 
    dept_id, 
    COUNT(*) as total_records 
FROM applications 
GROUP BY dept_id;
