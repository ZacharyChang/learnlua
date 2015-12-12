-- 重写一个简单的print函数，可变参数
function printmy(...)
	printResult=''
	for i,v in ipairs(arg) do
		-- print(i,v)
		printResult=printResult .. tostring(v) .. '\t'
		-- print(printResult)
	end
	printResult=printResult .. '\n'
	print(printResult)
end

printmy('a','b','c','d',1)
printmy(1,2,3)
printmy(unpack({'a1','b2',45,'hello'}))
