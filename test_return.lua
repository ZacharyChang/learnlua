function foo0() end

function foo1()
	return 'a'
end

function foo2()
	return 'a','b'
end

x=foo0()
print(x)		-- 	nil
x,y=foo1()
print(x,y)		-- 	a	nil
x,y=foo2()
print(x,y)		-- 	a	b
x,y,z=foo2()
print(x,y,z)	-- 	a	b	nil
print(foo2())	--	a	b
print((foo2()))	--	a	使用()强制返回一个值
