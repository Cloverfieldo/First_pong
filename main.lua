local player = require 'player'
local enemy = require 'enemy'

function love.update(dt)
  player.update(dt)
end

function love.draw()
  player.draw()
  enemy.draw()
end

