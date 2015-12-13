print('test print')
a={p=print}
a.p('Hello,World')
print=math.sin
a.p(print(1))
sin=a.p
sin('a',a,'a.p',a.p)

function foo(x)
	return x*2
end

--[[ same as the follow:
foo = function(x) return x*2 end
]]
a.p(foo(5))
