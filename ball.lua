local ball = {}

ball.x = love.graphics.getWidth() / 2
ball.y = love.graphics.getHeight() / 2

function ball.draw()
  love.graphics.circle()
end