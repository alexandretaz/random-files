def my_generator():
    try:
        yield "something"
    except ValueError:
        yield "dealing with the exception"
    finally:
        print "ok, then"

gen = my_generator()

gen.next()
gen.throw(ValueError('mimimi'))
gen.close()
