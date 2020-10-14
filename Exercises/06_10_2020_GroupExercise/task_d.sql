/*D: Geben Sie alle Schüler aus, die in Emmendingen wohnen und bei Herrn Huber Unterricht haben. Ausgabe Schülername, Wohnort, Lehrername.*/

SELECT S.name as "Schülername", O.name as "Wohnort", L.name as "Lehrername"
FROM lehrer L 
INNER JOIN lehrer_hat_schueler	LS on L.id = LS.idLehrer
INNER JOIN schueler S on S.id = LS.idSchueler

INNER JOIN orte O on S.idOrte = O.id
WHERE O.name = "Emmendingen" AND  L.name="Bohner" ; /* mit Huber gibt es keinen*/