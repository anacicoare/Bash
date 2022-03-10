1.	Trimite o cerere HTTP de tip GET la $TASK_API/uso/part1/$SECRET_KEY. Aceasta vă va întoarce un token cu o durată de viață de 3 minute.
2.	Trimite o cerere HTTP de tip POST la $TASK_API/uso/part2 cu un body de tip JSON de forma {“secret_key”: $SECRET_KEY, “token”: <token_primit>}.
La final, dacă se rulează comenzile din fișier, ar trebui să fie afișat doar rezultatul primit după a doua cerere, fără newline (\n).
