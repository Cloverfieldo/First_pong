local enemy = {}

enemy.width = 20
enemy.height = 70

enemy.x = love.graphics.getWidth() - (enemy.width + 30)
enemy.y = 300

enemy.enemy = true
function enemy.update(dt, ball) 
  if ball.y > enemy.y then
    enemy.y = enemy.y + 400 * dt
  end
  if ball.y < enemy.y then
    enemy.y = enemy.y - 400 * dt
  end
  
end

function enemy.draw() 
  love.graphics.rectangle('line', enemy.x, enemy.y, enemy.width, enemy.height)
end

return enemy