Query 1:

SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

2
3
22
23
28
................................

Query 2:

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

13576
................................

Query3:

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

4980
5148
7656

................................

Query4:

SELECT DISTINCT status
FROM loan
ORDER BY status ASC;

A
B
C
D
.................................
Query5:

SELECT loan_id
FROM loan
ORDER BY amount DESC
LIMIT 1;

6534

Query6:

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

2	80952
19	30276
25	30276
37	318480
38	110736

Querry7:

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

10954
938
10711
1766
10799

Querry 8:

SELECT DISTINCT k_symbol
FROM `order`;

SIPO
UVER

POJISTNE
LEASING

....................

Query9:

SELECT order_id
FROM `order`
WHERE account_id = 34;

29445
29446
29447
........................
Querry10:

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

88
90
96
97
...........................
Querry11:

SELECT amount
FROM `order`
WHERE account_to = 30067122;

5123.0

...............................
Querry12:

SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

3556468	981231	PRIJEM	78.6
233254	981216	VYDAJ	600.0
233104	981212	VYDAJ	1212.0
233248	981211	VYDAJ	851.0
233176	981207	VYDAJ	204.0
3556467	981130	PRIJEM	75.1
233395	981130	VYDAJ	14.6
233103	981112	VYDAJ	1212.0
233247	981111	VYDAJ	851.0
233175	981107	VYDAJ	204.0
............................

Query13:

SELECT district_id, COUNT(*)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

3556468	981231	PRIJEM	78.6
233254	981216	VYDAJ	600.0
233104	981212	VYDAJ	1212.0
233248	981211	VYDAJ	851.0
233176	981207	VYDAJ	204.0
3556467	981130	PRIJEM	75.1
233395	981130	VYDAJ	14.6
233103	981112	VYDAJ	1212.0
233247	981111	VYDAJ	851.0
233175	981107	VYDAJ	204.0
................................

Query14:

SELECT type, COUNT(*)
FROM card
GROUP BY type
ORDER BY COUNT(*) DESC;

classic	659
junior	145
gold	88
.............................

Query15:

SELECT account_id, SUM(amount)
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

7542	590820
8926	566640
2335	541200
817	538500
2936	504000
7049	495180
10451	482940
6950	475680
7966	473280
339	468060
........................

Query16:

SELECT date, COUNT(*)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

930906	1
930803	1
930728	1
930711	1
930705	1
........................
Querry17:

SELECT date, duration, COUNT(*)
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date ASC, duration ASC;

971206	24	1
971206	36	1
971208	12	3
971209	12	1
971209	24	1
971210	12	1
971211	24	1
971211	48	1
971213	24	1
971220	36	1
971221	36	1
971224	60	1
971225	24	1
971225	60	1
971226	60	1
971227	48	1
971228	12	1
971228	36	1
971228	48	2
971231	60	1
.............................

Querry18:

SELECT account_id, type, SUM(amount) AS total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type ASC;

396	PRIJEM	1028138.7
396	VYDAJ	1485814.4

