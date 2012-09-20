# ROADMAP

## 0.0 Initial Commit

## 0.1 Really simple transformation with optional fields selection

### Usage:

```javascript
  mq(query [, allowedAttributes]);
```

### Example:
 
```jquery
  var query = {
    "name": "john",
    "surname": "doe"
  };
  var allowedAttributes = ["name"];
  mq(query, allowedAttributes);
```
will result

```json
  { "name": "john" }
```
