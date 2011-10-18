def psychologist():
    print "Please tell me your problems"
    while True:
        answer =(yield) 
        if answer is not None:
            if answer.endswith('?'):
                print ("Dont ask yourself to much questions")
            elif 'good' in answer:
                print "Gooda, lets roll"
            elif 'bad' in answer:
                print "humm why so negative ?"

free =psychologist()
free.next()
free.send("I feelbad")
free.next()
