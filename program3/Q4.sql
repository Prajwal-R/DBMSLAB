/* 4. Find the title of movies and number of stars for each movie that has at least one
rating and find the highest number of stars that movie received. Sort the result by
movie title. */

SELECT MOV_TITLE, COUNT(REV_STARS), MAX (REV_STARS) FROM MOVIES M JOIN RATING R ON M.MOV_ID=R.MOV_ID
GROUP BY MOV_TITLE HAVING COUNT(REV_STARS)>0 ORDER BY MOV_TITLE; 
