$ORIGIN l1-6.ephecti.be.
$TTL 604800      ; 1 day
@   IN SOA  ns.l1-6.ephecti.be. l1-6.ephecti.be. (
                                2001062503 ; serial
                                604800     ; refresh (1 week)
                                86400      ; retry (1 day)
                                2419200    ; expire (4 weeks)
                                604800     ; minimum (1 week)
                                )

	IN	NS 	ns.l1-6.ephecti.be. 
ns	   IN A 135.125.101.227
	   IN	MX	10	mail

www            IN        A       135.125.101.227
b2b            IN        A       135.125.101.227
mail           IN        A       135.125.101.227



; voip
sip    		   IN        A        IP du vps
_sip._tcp     SRV     0       0       5060        sip
_sip._udp     SRV     0       0       5060        sip