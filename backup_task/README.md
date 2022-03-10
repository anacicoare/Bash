	Un script numit backup_task.sh care creează un director cu numele backup-confs și salvează în acesta toate fișierele cu extensia .conf din /etc (în mod recursiv), indiferent de tipul acestora. 
	Salvarea fișierelor presupune copierea acestora. 
	Toate erorile vor fi raportate în fișierul /home/student/tema3-scripts-output/backup-confs/errors.txt. 
	Mai departe, scriptul va realiza modificările necesare, astfel încât toate fișierele din directorul /home/student/tema3-scripts-output/backup-confs de dimensiune mai mare de 1K 
să fie redenumite prin adăugarea sufixului _large 
(ex: fișierul test2K.conf ar trebui să devină test2K.conf_large, nu test2K_large.conf).
