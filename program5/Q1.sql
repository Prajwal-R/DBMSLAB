/* 1. Make a list of all project numbers for projects that involve an employee whose last
name is 'Scott', either as a worker or as a manager of the department that controls the
project. */

	SELECT P.PNO ,P.PNAME, FNAME
	FROM PROJECT P, DEPARTMENT D, EMPLOYEE E
	WHERE P.DNO=D.DNO AND 
		D.MGRSSN=E.SSN AND
		E.LNAME='SCOTT'
UNION
	SELECT P1.PNO ,P1.PNAME, FNAME
	FROM PROJECT P1, WORKS_ON W, EMPLOYEE E1
	WHERE P1.PNO=W.PNO AND
		E1.SSN=W.SSN AND
		E1.LNAME='SCOTT';