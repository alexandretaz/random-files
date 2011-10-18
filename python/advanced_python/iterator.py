import tokenize
reader = open('/etc/passwd').next
tokens = tokenize.generate_tokens(reader)
print tokens.next()
print tokens.next()
