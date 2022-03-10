Un script care primește argumente în linia de comandă. 
Argumentele sunt de forma <Oraș temperatura vreme> (ex. București 10 soare). 
Scriptul va realiza următoarele acțiuni:

1	Va adăuga o intrare de forma <Oraș temperatura vreme> în fișierul /home/student/tema3-scripts-output/weather.info. 
Ex: La rularea comenzii ./weather.sh Bucuresti 10 soare fișierul weather.info va conține linia București 10 soare.

2.	Va memora starea actuală a vremii și a temperaturii pentru fiecare oraș în fișierul live.info (dacă un oraș există, informațiile vor fi actualizate, dacă nu există, se va adăuga o intrare nouă). 
Fiecare linie din fișierul live.info va fi de forma Oraș temperatura vreme. 
Ex: După rularea comenzilor ./weather.sh Bucuresti 10 soare și ./weather.sh Bucuresti 8 ploaie fișierul live.info va conține linia 
București 8 ploaie.

3.	 Modificați script-ul într-un script numit /home/student/tema3-scripts/weather_2.sh care realizează aceleași acțiuni, dar poate primi argumentele în orice ordine. 
În rezolvarea acestei cerințe, păstrați și fișierul inițial, weather.sh. 
Ex: După rularea comenzilor ./weather_2.sh soare 10 Bucuresti și ./weather_2.sh Bucuresti ploaie 8 fișierul weather.info va conține liniile 
București 10 soare și București 8 ploaie
,iar fișierul live.info va conține linia 
București 8 ploaie.
