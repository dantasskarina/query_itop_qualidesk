--chamados requisições para a equipe da accenture.
SELECT ur  FROM UserRequest AS ur WHERE ur.status NOT IN ("closed","resolved") AND ur.team_id = 1997

--chamados incidentes para a equipe da accenture.
SELECT i FROM Incident AS i WHERE i.status NOT IN ("closed","resolved") AND i.team_id = 1997

--chamados abertos maiores que um 15 dias.
SELECT UserRequest
WHERE
start_date < DATE_FORMAT(NOW(),'%Y-%m-01 00:00:00')
AND  start_date > DATE_FORMAT(DATE_SUB(NOW(), INTERVAL 1 MONTH),'%Y-%m-01 00:00:00')
AND team_id = 1997
AND status NOT IN ("closed","resolved")




