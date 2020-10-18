local player = require 'player'
local enemy = require 'enemy'
local ball = require 'ball'
local coli = require 'coli'
paddles = {player, enemy}
function love.update(dt)
  for i,v in ipairs(paddles) do
    if coli.checkCollision(v, ball) then
      --print(v.name)
      if v.player then
        ball.speedX = -math.abs(ball.speedX) 
      end
      if v.enemy then
        ball.speedX = math.abs(ball.speedX)
      end
    end
  end
  ball.update(dt)
  player.update(dt)
  enemy.update(dt, ball)
end

function love.draw()
  player.draw()
  enemy.draw()
  ball.draw()
end

