function allwords(f)
	for l in io.lines() do
		for w in string.gfind(l,'%l+') do
			f(w)
		end
	end
end

-- allwords(print)

-------------------------
local count=0
allwords(function(w)
	if w=='hello' then
		count=count+1
		print(count)
	end
end)
print(count)
