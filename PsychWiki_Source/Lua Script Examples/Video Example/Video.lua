local allowCountdown = false;
function onStartCountdown()
     if not allowCountdown then -- Block the first countdown
          allowCountdown = true; 
          startVideo('testVideo')
          return Function_Stop;  
     end
     return Function_Continue; 
end
