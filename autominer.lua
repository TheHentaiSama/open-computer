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
   for i=0,n-1 do
      robot.forward()
   end
end

local profondeur = arg[1]
local nombre = arg[2]

for i=0,nombre-1 do
   miner(profondeur)
   retour(profondeur)
   robot.turnRight()
   robot.turnRight()
   robot.forward()
   robot.forward()
   robot.forward()
   robot.turnRight()
   robot.turnRight()
end
