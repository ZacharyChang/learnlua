days={'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'}
print(days[2])
tab={1,2,3,4}
print(tab[2])

--[[
list = nil
for line in io.lines() do
	list = {next=list,value=line}
end

l=list
while l do
	print(l.value)
	l = l.next
end
]]

