function myHeteroMath(a, b)
     local b = b or 3 -- if there is no value, it will return '3'
     return a * b
end
 
function onCreate()
     debugPrint(myHeteroMath(3)) -- will print '9'
end