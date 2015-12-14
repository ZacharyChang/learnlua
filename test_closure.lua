function newCounter()
	local i=0
	return function()
		i=i+1
		return i
	end
end

c1=newCounter()
-- c2=newCOunter()
print(c1())
print(c1())
-- print(c2())

names={'Peter','Paul','Mary'}
grades={Mary=10,Peter=8,Paul=9}
table.sort(names,function(n1,n2)
	return grades[n1]>grades[n2]
end)
print(unpack(names))


oldSin=math.sin
math.sin=function(x)
	return oldSin(x*math.pi/180)
end

print(oldSin(1))
print(math.sin(1))

