# This is a simple python program that loops forever printing the dave every 2 seconds.

import time
from datetime import datetime

while True:
	# print date
	i = datetime.now()
 	print str(i)
	# sleep 2 seconds
	time.sleep(2)
