#!/usr/bin/env python
# This is super basic and should run on prety-much any python you happen to have.

# This is a simple python program that loops forever printing the date every 2 seconds.
import time
from datetime import datetime

while True:
	# print date
	i = datetime.now()
 	sys.stdout.write(str(i)+'\n')
	# sleep 2 seconds
	time.sleep(2)
