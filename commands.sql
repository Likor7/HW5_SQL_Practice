-- First Task
UPDATE rozklad SET class_id = 1 WHERE id = 3;
UPDATE rozklad SET class_id = 2 WHERE id = 4;
UPDATE rozklad SET class_id = 3  WHERE id = 2;
UPDATE rozklad SET class_id = 4  WHERE id = 1;

-- Second Task
SELECT t.first_name, t.last_name, l.name, rooms.number, cl.name, r.time 
FROM rozklad r 
INNER JOIN lessons l ON l.id=r.lesson_id 
INNER JOIN teachers t ON t.id=r.teacher_id 
INNER JOIN rooms ON rooms.id=r.room_id 
INNER  JOIN classes cl ON cl.id=r.class_id 
WHERE time BETWEEN "11:00:00" AND "13:00:00";