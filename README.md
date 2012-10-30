mq
==

Translates http query string to mongodb query
(Heavily inspired by tower.js controllers. For those who search for something lighter and independent)

### 1. Strings (not implemented yet)

```
name=John
name=John+Doe
name='John+Doe'
```

```javascript
{"name": { "$match" : ["John"] } }
{"name": { "$match" : ["John", "Doe"] } }
{"name": { "$match" : ["John Doe"] } }
```

### 2. Numbers (not implemented yet)

```
stars=1
stars=1..
stars=..5
stars=1..5
```

```javascript
{"stars": 1}
{"stars": { "$gte": 1 } }
{"stars": { "$lte": 5 } }
{"stars": { "$gte": 1, "$lte": 5 } }
```

### 3. Arrays (not implemented yet)

```
tags=coffee,
tags=coffee,vodka
```

```javascript
{"tags" : { "$in" : ["coffee"] } }
{"tags" : { "$in" : ["coffee", "vodka"] } }
```

Please note that `,` is important in the first case
dates

