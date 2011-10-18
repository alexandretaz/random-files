numbers = range(10)
size = len(numbers)
evens = []
i = 0

while i < size:
    if i % 2 == 0:
        evens.append(i)

    i+= 1

print evens


print [(i for i in range(10) if i % 2 == 0)]
