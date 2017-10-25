from tasks import add
add.delay(4, 4)

result = add.delay(4, 4)
print(result.get(timeout=5))