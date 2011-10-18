def power(values):
    for value in values:
        print "powering %s" % value
        yield value

def adder(values):
    for value in values:
        print "adding to %s" % value
        if value % 2 == 0:
            yield value + 3
        else:
            yield value + 2

elements = [ 1, 4 ,7 , 9, 12 ,19]
res = adder(power(elements))
print res.next()
print res.next()

