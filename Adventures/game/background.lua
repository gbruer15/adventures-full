background = {}

function background.load()
	
	
	gameTile = {}
	gameTile.image = love.graphics.newImage('Art/Misc Pics/sky.png')
	gameTile.imagewidth = gameTile.image:getWidth()
	gameTile.imageheight = gameTile.image:getHeight()
	gameTile.width = gameTile.imagewidth
	gameTile.height = gameTile.imageheight
	

end



function background.draw(tile)
	local screenleft,screentop = getWorldScreenRect()
	local left = math.floor( screenleft /tile.width )  * tile.width 
	
	local x = left
	
	local right = left + camera.width + tile.width
	
	local top = math.floor( screentop /tile.height )  * tile.height
	
	local bottom = top + camera.height + tile.height
	
	local y = top
	
	love.graphics.setColor(255,255,255)
	while y < bottom  do
	
		while x < right do
			
			love.graphics.draw(tile.image, x,y, 0, tile.width/tile.imagewidth, tile.height/tile.imageheight)
			
			x = x + tile.width
		end
		
		y = y + tile.height
		x = left
	end
		
end
