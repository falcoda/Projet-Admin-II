$ORIGIN intranet.ephecti.be.
$TTL 604800      ; 1 day
@   IN SOA  ns.intranet.ephecti.be. dallenogare.intranet.ephecti.be. (
                                2001062503 ; serial
                                604800     ; refresh (1 week)
                                86400      ; retry (1 day)
                                2419200    ; expire (4 weeks)
                                604800     ; minimum (1 week)
                                )

; name servers - NS record								
@ IN NS    ns.intranet.ephecti.be.



erp            IN        A       192.168.8.1

; name servers - A record
ns             IN        A       192.168.8.2
resolv         IN        A       192.168.8.3
baseddon       IN        A       192.168.8.4

