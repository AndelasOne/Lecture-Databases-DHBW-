/*B2: Wir brauchen eine Liste der Schüler von Frau Maier. Wir brauchen folgende Spalten: Schülername, Schülerwohnort*/

SELECT S.name as "Schülername", O.name as "Wohnort"
FROM lehrer L
INNER JOIN lehrer_hat_schueler LS on L.id = LS.idLehrer
INNER JOIN schueler S on S.id = LS.idSchueler
INNER JOIN orte O on S.idOrte = O.id
WHERE L.name = "Maier";
