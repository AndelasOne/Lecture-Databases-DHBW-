

select L.name as "Lehrername", S.name as "Schülername"
from lehrer L
inner join lehrer_hat_schueler LS on L.id = LS.idLehrer
inner join schueler S on S.id = LS.idSchueler;
