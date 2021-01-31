/* 4. Calculate the FinalIA (Average of best two test marks) and update the corresponding table for all students. */

UPDATE IAMARKS
SET FINALIA=GREATEST(TEST1+TEST2,TEST2+TEST3,TEST1+TEST3)/2;
-- After executing the procedure, run this:
SELECT * FROM IAMARKS;