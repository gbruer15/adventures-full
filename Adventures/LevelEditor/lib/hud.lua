

hud = {}

function hud.load()
	hud.width = window.width
	hud.height = 0.15 * window.height
	hud.x,hud.y = 0, 0
	
	hud.outline = {}
	hud.outline.color = {0,0,0}
	hud.outline.width = 6
	
	hud.buttons = {}
	hud.buttons.save = button.make{text="Save",textcolor={255,255,255}, font=defaultfont[20],x=630,y=10, width=60,height=30}
	hud.buttons.quit = button.make{text="Quit",textcolor={255,255,255}, font=defaultfont[20],x=730,y=10, width=60,height=30}
	
	hearts = {}
	hearts.pic = {}
	hearts.pic.full = love.graphics.newImage("Misc Pics/full heart.png")
	hearts.pic.half = love.graphics.newImage("Misc Pics/half heart.png")
	hearts.pic.empty = love.graphics.newImage("Misc Pics/empty heart.png")
	hearts.pic.drawwidth = 18 -- 9:10
	hearts.pic.drawheight = 18--15
	hearts.pic.picwidth = hearts.pic.full:getWidth()
	hearts.pic.picheight = hearts.pic.full:getHeight()

	bubble = {}
	bubble.pic = love.graphics.newImage('Misc Pics/bubble.png')
	bubble.picwidth = bubble.pic:getWidth()
	bubble.picheight = bubble.pic:getHeight()
	bubble.width = 30
	bubble.height = 30
	bubble.time = 30
end


function hud.update(dt)
	for i,b in pairs(hud.buttons) do
		b:update()
	end
end


function hud.mousepressed(x,y,button)
	for i,b in pairs(hud.buttons) do
		if b.hover then
			if i == 'save' then
				level.save(editor.level)
			elseif i == 'quit' then
				state = titlemenu.make()
			end
		end
	end

end

function hud.draw()
	
	--love.graphics.setColor(200,130,50)
	--love.graphics.rectangle("fill", hud.x,hud.y, hud.width,hud.height)
	love.graphics.setColor(255,255,255)
	local n = 6
	for i=1,n do 
		love.graphics.draw(graybrick.pic, hud.x + (i-1)*hud.width/n,hud.y,0, hud.width/n/graybrick.width,hud.height/graybrick.height)
	end

	
	love.graphics.setColor(unpack(hud.outline.color))
	love.graphics.setLineWidth(hud.outline.width)
	love.graphics.rectangle("line", hud.x+hud.outline.width/2,hud.y+hud.outline.width/2, hud.width-hud.outline.width,hud.height-hud.outline.width)
	
	
	love.graphics.setFont(neographfont[28])
	love.graphics.setColor(30,30,30)

	local x,y = 10,3
	love.graphics.print(editor.level, x+2,y)
	love.graphics.print(editor.level, x-2,y)
	love.graphics.print(editor.level, x,y+2)
	love.graphics.print(editor.level, x,y-2)

	love.graphics.setColor(255,150,80)
	love.graphics.print(editor.level, x,y)
	

	for i,b in pairs(hud.buttons) do
		b:draw()
	end
end
