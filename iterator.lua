function list_iter(t)
	local i=0
	local n=table.getn(t)
	return function()
		i=i+1
		if i<=n then
		return t[i]
		end
	end
end

tab={4,23,1,25,64,33,46}
iter=list_iter(tab)

while true do
	local element=iter()
	if element ==nil then
		break
	end
	print(element)
end

--[[ not work
for element in iter() do
	print(element)
end
]]

function allwords()
	local line=io.read()
	local pos=1
	return function()
		while line do
			--[[
			%s 空白符
			%p 标点
			%c 控制字符
			%d 数字
			%x 十六进制数
			%z 代表0的字符
			%a 字母
			%l 小写字母
			%u 大写字母
			%w 字母数字
			]]
			local s,e=string.find(line,'%d+',pos)
			if s then
				pos=e+1
				return string.sub(line,s,e)
			else
				line=io.read()
				pos=1
			end
		end
	return nil
	end
end

for word in allwords() do
	print(word)
end
