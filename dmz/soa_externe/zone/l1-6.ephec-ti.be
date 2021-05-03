$ORIGIN l1-6.ephec-ti.be.
$TTL 80000
@   IN SOA  ns.l1-6.ephec-ti.be. l1-6.ephec-ti.be. (
                                2001062503 ; serial
                                40000     ; refresh (1 week)
                                500      ; retry (1 day)
                                2419200    ; expire (4 weeks)
                                80000     ; minimum (1 week)
                                )								
@	IN MX 10 mail 
; name servers - NS record								
l1-6.ephec-ti.be.        IN     NS    ns.l1-6.ephec-ti.be.
ns	    IN     A    135.125.101.227;     ; name servers - A record


www         IN        A       135.125.101.227;    ;web servers - A record
b2b         IN        A       135.125.101.227;	  ;web servers -A record
mail 		IN 		  A		  135.125.101.227;	  ;mail servers -A record