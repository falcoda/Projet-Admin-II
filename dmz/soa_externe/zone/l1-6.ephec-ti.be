
$ORIGIN l1-6.ephec-ti.be.
$TTL 80000
@   IN SOA  ns.l1-6.ephec-ti.be. l1-6.ephec-ti.be. (
                                2001062503 ; serial
                                40000     ; refresh (1 week)
                                500      ; retry (1 day)
                                2419200    ; expire (4 weeks)
                                80000     ; minimum (1 week)
                                )

; name servers - NS record
l1-6.ephec-ti.be.        IN     NS    ns.l1-6.ephec-ti.be.
@       IN MX 10 mail.l1-6.ephec-ti.be.
ns          IN     A    135.125.101.227;     ; name servers - A record
ns          IN    AAAA  2001:41d0:404:200::80ab


www         IN        A       135.125.101.227;    ;web servers - A record
www IN AAAA  2001:41d0:404:200::80ab

b2b         IN        A       135.125.101.227;    ;web servers -A record
b2b IN AAAA  2001:41d0:404:200::80ab


mail            IN                A               135.125.101.227;        ;mail servers -A record
mail IN AAAA  2001:41d0:404:200::80ab


smtp        IN    CNAME           mail
pop3        IN    CNAME    mail
imap        IN    CNAME    mail
@           IN        TXT     "v=spf1 a mx ip4:135.125.101.200 include:_spf.google.com ~all"

_dmarc      IN        TXT        ("v=DMARC1;p=reject;sp=reject;pct=10;"
   "adkim=r;aspf=r;fo=1;ri=86400")


mail._domainkey IN TXT ( "v=DKIM1; h=sha256; k=rsa;  " "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAntTIjD/iDHtiTyXMIEKbBkb7W/KmvA0P9oZqfVrhp2Rpnqwg6W/+X1ZTSdW+2SIUMO1YobARP1hhwbAnfgBmO0>


$INCLUDE l1-6.ephec-ti.be.ksk.key
$INCLUDE l1-6.ephec-ti.be.zsk.key
