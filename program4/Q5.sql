/* 5. Categorize students based on the following criterion:
If FinalIA = 17 to 20 then CAT = ‘Outstanding’
If FinalIA = 12 to 16 then CAT = ‘Average’
If FinalIA< 12 then CAT = ‘Weak’
Give these details only for 8th semester A, B, and C section students. */

SELECT S.USN,S.SNAME,SS.SEM,SS.SEC,
 (CASE
 WHEN IA.FINALIA BETWEEN 17 AND 20 THEN 'OUTSTANDING'
 WHEN IA.FINALIA BETWEEN 12 AND 16 THEN 'AVERAGE'
 ELSE 'WEAK'
 END) AS CAT
FROM STUDENT S, SEMSEC SS, IAMARKS IA
WHERE S.USN = IA.USN AND
	SS.SSID = IA.SSID AND
	SS.SEM = 8 AND
	(SS.SEC='A' OR SS.SEC='B' OR SS.SEC='C');