/* Group Exercise 1*/

/* Task A : Geben Sie einer Liste aller Schüler aus, die ein Apple-Smartphone besitzen. Auszugeben sind der Schülername und der Name des Wohnorts. Annahme iPhone ID is: 1*/


SELECT S.name, O.name
FROM schueler S 
INNER JOIN smartphones SP ON S.idSmartphones = SP.id
INNER JOIN orte O ON S.idOrte = O.id
WHERE SP.marke = "Apple"