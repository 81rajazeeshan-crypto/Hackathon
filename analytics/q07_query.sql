-- Query 07: Indus Weave HR Analytics
-- Solved according to case study requirements for question 7
SELECT 
    dept_id, 
    COUNT(*) as total_records 
FROM applications 
GROUP BY dept_id;
