#!/bin/bash
cat /etc/passwd | grep "/usr/sbin/nologin" | awk -F ':' '{print $1 ":" $5}' | sort | head > /home/student/tema3-scripts-output/users.out

