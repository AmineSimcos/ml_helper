import time
def wait(x):
    t0 = time.time()
    while time.time() - t0 < x:
        time.sleep(1)
    return x

print('start')
wait(3)
print('finish')