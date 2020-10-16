local enemy = {}

enemy.width = 20
enemy.height = 50

enemy.x = love.graphics.getWidth() - (enemy.width + 30)
enemy.y = 300

function enemy.draw()
  love.graphics.rectangle('line', enemy.x, enemy.y, enemy.width, enemy.height)
end

return enemy