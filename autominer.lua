local robot = require("robot")

local function miner(n)
   for i=0,n-1 do
      robot.swing()
      robot.forward()
      robot.swingUp()
   end
end

local function retour(n)
   robot.turnLeft()
   robot.turnLeft()
   print("n =")
   print(n)
   for i=0,n-1 do
      print("i =")
      print(i)
      robot.forward()
   end
end

print("enter depth, then number")
local profondeur, nombre = io.read("*n","*n")

for i=0,nombre-1 do
   miner(profondeur)
   retour(profondeur)
   robot.turnRight()
   robot.swing()
   robot.forward()
   robot.swing()
   robot.forward()
   robot.swing()
   robot.forward()
   robot.turnRight()
end
