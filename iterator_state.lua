-- 多状态的迭代器
local iterator

function allwords()
	local state={line=io.read(),pos=1}
	return iterator,state
end

function iterator(state)
	while state.line do
		local s,e=string.find(state.line,'%d+',state.pos_)
		if s then	-- find a word
			state.pos=e+1	--update new position
			return string.sub(state.line,s,e)
		else
			state.line=io.read()	--try the next line
			state.pos=1		-- from the first position
		end
	end
	return nil		-- no more lines;end loop
end

