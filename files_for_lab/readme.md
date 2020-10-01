![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Selection and Aggregation

## Introduction

Refer to `files_for_lab/` database. Load it to Sequel Pro, and there you will find a `bank` database which we will use for the following exercise.

Here, we will practice selecting and projecting data. You can finish all questions with only those clauses:

- `SELECT`
- `SELECT DISTINCT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `LIMIT`

You can save your solutions in a file `solutions.sql`.

## Challenge

Assume that any `_id` columns are incremental, meaning that higher ids always occur after lower ids. For example, a client with a higher `client_id` joined the bank after a client with a lower `client_id`.

### 1. From the `client` table, what are the ids of the first 5 clients from `district_id` 1?

Result:

```
2
3
22
23
28
```

### 2. From the `client` table, what is the id of the last client from `district_id` 72?

Result:

```
13576
```

### 3. From the `loan` table, what are the 3 lowest amounts?

Result:

```
4980
5148
7656
```

### 4. From the `loan` table, what are the possible values for status, ordered alphabetically in ascending order?

Result:

```
A
B
C
D
```

### 5. From the `loans` table, what is the `loan_id` of the highest payment received?

Result:

```
6312
```

### 6. From the `loans` table, what is the loan `amount` of the lowest 5 `account_id`s. Show the `account_id` and the corresponding `amount`

Result:

```
2	80952
19	30276
25	30276
37	318480
38	110736
```

### 7. From the `loans` table, which are the `account_id`s with the lowest loan `amount` have a loan `duration` of 60?

Result:

```
10954
938
10711
1766
10799
```

### 8. From the `order` table, what are the unique values of `k_symbol`?

Note: There shouldn't be a table name `order`, since `order` is reserved from the `ORDER BY` clause. You have to use backticks to escape the `order` table name.
Result:

```

LEASING
POJISTNE
SIPO
UVER
```

### 9. From the `order` table, which are the `order_id`s from the client with the `account_id` 34?

Result:

```
29445
29446
29447
```

### 10. From the `order` table, which `account_id`s were responsible for orders between `order_id` 29540 and `order_id` 29560 (inclusive)?

Result:

```
88
90
96
97
```

### 11. From the `order` table, what are the individual amounts that were sent to (`account_to`) id 30067122?

Result:

```
5123
```

### 12. From the `trans` table, show the `trans_id`, `date`, `type` and `amount` of the 10 first transactions from `account_id` = 793 in chronological order, from newest to oldest.

Result:

```
3556468	981231	PRIJEM	78.6
233254	981216	VYDAJ	600
233104	981212	VYDAJ	1212
233248	981211	VYDAJ	851
233176	981207	VYDAJ	204
3556467	981130	PRIJEM	75.1
233395	981130	VYDAJ	14.6
233103	981112	VYDAJ	1212
233247	981111	VYDAJ	851
233175	981107	VYDAJ	204
```

### 13. From the `client` table, of all districts with a `district_id` lower than 10, how many clients are from each `district_id`? Show the results sorted by district_id in ascending order.

Result:

```
1	663
2	46
3	63
4	50
5	71
6	53
7	45
8	69
9	60
```

### 14. From the `card` table, how many cards exist for each `type`? Rank the result starting with the most frequent `type`.

Result:

```
classic	659
junior	145
gold	88
```

### 15. Using the `loan` table, print the top 10 `account_id`s based on the sum of all of their loan amounts.

Result:

```
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
```

### 16. From the `loan` table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order

Result:

```
930906	1
930803	1
930728	1
930711	1
930705	1
```

### 17. From the `loan` table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.

Result:

```
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
```

### 18. From the `trans` table, for account_id 396, sum the amount of transactions for each type (VYDAJ = Outgoing, PRIJEM = Incoming). Your output should have the account_id, the type and the sum of amount, named as `total_amount`. Sort alphabetically by type.

Result:

```
396	PRIJEM	1028138.6999740601
396	VYDAJ	1485814.400024414
```

### 19. From the previous output, translate the values for `type` to English, rename the column to `transaction_type`, round `total_amount` down to an integer

Result:

```
396	INCOMING	1028138
396	OUTGOING	1485814
```

### 20. From the previous result, modify you query so that it returns only one row, with a column for incoming amount, outgoing amount and the difference

Result:

```
396	1028138	1485814	-457676
```

### 21. Continuing with the previous example, rank the top 10 account_ids based on their difference

Result:

```
9707	869527
3424	816372
3260	803055
2486	735219
1801	725382
4470	707243
3674	703531
9656	702786
2227	696564
6473	692580
```

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You have been using this database for a couple labs already, but if you need to get the data again, refer to the official [installation link](https://dev.mysql.com/doc/sakila/en/sakila-installation.html).

The database is structured as follows:
![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instructions

We will be trying to predict if a customer will be renting a film this month based on their previous activity and other details. We will first construct a table with:

- Customer ID
- City
- Most rented film category
- Total films rented
- Total money spent
- How many films rented last month

and try to predict if he will be renting this month.
Use date range (`15/05/2005` - `30/05/2005`) for last month and (`15/06/2005` - `30/06/2005`) for this month.
