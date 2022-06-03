$TTL 1W
@	IN	SOA	okd4-services.okd4.example.com.	root (
			2019070700	; serial
			3H		; refresh (3 hours)
			30M		; retry (30 minutes)
			2W		; expiry (2 weeks)
			1W )		; minimum (1 week)
	IN	NS	okd4-services.okd4.example.com.
	IN	MX 10	smtp.example.com.
;
;
okd4-services.okd4.example.com.		IN	A	10.1.2.1
smtp.example.com.		IN	A	10.1.2.1
;
helper.example.com.		IN	A	10.1.2.1
helper.okd4.example.com.	IN	A	10.1.2.1
;
api.okd4.example.com.		IN	A	10.1.2.1 
api-int.okd4.example.com.	IN	A	10.1.2.1 
;
*.apps.okd4.example.com.	IN	A	10.1.2.1 
;
bootstrap.okd4.example.com.	IN	A	10.1.2.10
;
master0.okd4.example.com.	IN	A	10.1.2.20
master1.okd4.example.com.	IN	A	10.1.2.21 
master2.okd4.example.com.	IN	A	10.1.2.22
;
worker0.okd4.example.com.	IN	A	10.1.2.30 
worker1.okd4.example.com.	IN	A	10.1.2.31
mkz.local			IN	A	192.168.1.101
;
;EOF
