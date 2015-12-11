days={'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'}
print(days[2])
tab={1,2,3,4}
print(tab[2])
print('-------------')
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

-- 构建days的反向表
revDays={}
for i,v in ipairs(days) do
	revDays[v]=i
end
-- 顺序输出反向表
for k=1,7 do
	print(revDays[days[k]])
end

--[[
for exp1,exp2,exp3 do
	loop-part
end

exp1->初始值
exp2->终止值
exp3->递增值，默认step=1
]]
