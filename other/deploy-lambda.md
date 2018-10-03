# 試しに実行
```lambda_function.py
def lambda_handler(event, context):
    print("value1 = " + event['key1'])
    return event['key1']
```
```
$ docker run -v "$PWD":/var/task lambci/lambda:python3.6 lambda_function.lambda_handler '{"key1": "key2"}'
```

```
START RequestId: 7a23b936-30bb-47d3-94db-0c5eeb57b5f3 Version: $LATEST
value1 = key2
END RequestId: 7a23b936-30bb-47d3-94db-0c5eeb57b5f3
REPORT RequestId: 7a23b936-30bb-47d3-94db-0c5eeb57b5f3 Duration: 12 ms Billed Duration: 100 ms Memory Size: 1536 MB Max Memory Used: 19 MB

"key2"
```
