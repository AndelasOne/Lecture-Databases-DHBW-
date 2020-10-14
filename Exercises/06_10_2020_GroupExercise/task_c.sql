/*Geben Sie alle Schüler aus, die in Emmendingen wohnen. Folgende Spalten anzeigen: Schülername, Wohnort, Smartphonemarke.*/

SELECT S.name as "Schülername", O.name as "Wohnort", SP.marke as "Smartphonemarke"
FROM schueler S
INNER JOIN orte O on S.idOrte = O.id
INNER JOIN smartphones SP on S.idSmartphones = SP.id
WHERE O.name = "Emmendingen";