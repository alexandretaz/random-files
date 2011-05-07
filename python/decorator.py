def mydecorator(arg1,arg2):
	def _mydecorator(function):
		def _mydecorator(*args, **kw):
			res = function(*args,**kw)

			return res
		return __mydecorator
	return __mydecorator
