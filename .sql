-- Selezionare cognome e nome tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico (100)
SELECT surname , name 
FROM teachers t 
ORDER BY surname  ASC, name asc;
-- Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti (cfu) (375)
select cfu
from courses c 
where cfu >= 12;
-- Selezionare tutti gli studenti nati nel 1990 (160)
select date_of_birth
from students s 
where year(date_of_birth) = 1990;
-- Selezionare tutti i corsi del primo semestre del primoanno di un qualsiasi corso di laurea (286)

SELECT * 
FROM courses c 
WHERE c.year = 1
  AND c.period  = 'I semestre';
 -- Da quanti dipartimenti è composta l’università?
 select count(*)
 from departments d;
-- Contare tutti gli insegnanti il cui cognome termina con la “E” (8)
select count(*)
from teachers t 
WHERE surname  LIKE '%E';
-- Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico
 select s.name, s.surname, s.fiscal_code
 from students s 
 join degrees d on s.degree_id  = d.id
 where  d.name = 'Corso di Laurea in Economia'ORDER BY surname  ASC, name asc;
-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select d.name, d.`level`,d2.name 
from degrees d
join departments d2 on d2.id = d.department_id 
where d.`level` = 'magistrale' and d2.name = 'Dipartimento di Neuroscienze';