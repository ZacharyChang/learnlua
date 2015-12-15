print 'enter a number:'
-- n=io.read('*number')
-- assert(n,'invalid input')
n=io.read()
assert(tonumber(n),'invalid input:'..n..'is not a number')
