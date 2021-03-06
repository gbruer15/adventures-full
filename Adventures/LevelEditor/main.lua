io.stdout:setvbuf("no")

LUA_PATH, path = "?;?.lua",LUA_PATH
function requireDirectory(dir,recursive)
	local stuff = love.filesystem.getDirectoryItems(dir)
	for i,v in ipairs(stuff) do
		if love.filesystem.isFile(dir .. '/' .. v) and string.sub(v,string.len(v)-3) == '.lua' then
			require(dir .. '/' .. string.sub(v,1,string.len(v)-4))
			--print("Required " .. dir .. '/' .. string.sub(v,1,string.len(v)-4))
		elseif love.filesystem.isDirectory(dir .. '/' .. v) then
			if recursive then
				requireDirectory(dir .. '/' .. v,recursive)
			else
				print("Skipped " .. dir .. '/' .. v ..  " because we're not doing it recursively")
			end
		else
			--print(dir .. '/' .. v)
		end
	end
end
requireDirectory'lib'


LUA_PATH, path = path, LUA_PATH

function love.load()
	
	window = {}
	window.width,window.height = love.window.getDimensions()
	
	lovefunctions = {'update','draw','mousepressed','mousereleased','keypressed','keyreleased','quit'}

	resources.load()
	
	state = titlemenu.make()


	-- FPS cap
	min_dt = 1/60
	next_time = love.timer.getTime()
end

function love.update(dt)
	--  FPS cap  ---------------------
	next_time = next_time + min_dt ---
	----------------------------------

	state:update(dt)
end

function love.draw(dt)
	state:draw()


	-- FPS cap
	local cur_time = love.timer.getTime()
	if next_time <= cur_time then
		next_time = cur_time
		return
	end
	love.timer.sleep(1*(next_time - cur_time))
end

function love.mousepressed(x,y,button)
	if state.mousepressed then
		state:mousepressed(x,y,button)
	end
end

function love.mousereleased(x,y,button)
	if state.mousereleased then
		state:mousereleased(x,y,button)
	end
end

function love.keypressed(k)
	if state.keypressed then
		state:keypressed(k)
	end
end

function love.quit()
	if state.quit then
		return state:quit()
	end
end


function love.processEvents()
	if love.event then
		love.event.pump()
		for e,a,b,c,d in love.event.poll() do
			if e == "quit" then
				if not love.quit or not love.quit() then
					if love.audio then
						love.audio.stop()
					end
					QUIT = true
				end
			end
			love.handlers[e](a,b,c,d)
		end
	end
end

function love.run()
    math.randomseed(os.time())
    math.random() math.random()

    if love.load then love.load(arg) end

    local dt = 0
    -- Main loop time.
    while not QUIT do	
        love.processEvents()
        if QUIT then return end
        -- Update dt, as we'll be passing it to update
        love.timer.step()
        dt = love.timer.getDelta()

        -- Call update and draw
		love.update(dt)
		
		love.graphics.clear()
		love.draw()
			
		love.graphics.present()
    end
end

-------Good Functions to Have---------------

grid = {}
grid.spacing = 64
grid.show = false

function grid.draw()
	local left,top = camera.getWorldPoint(0,0)
	local right,bottom = camera.getWorldPoint(window.width,window.height)
	
	local x = math.round(left,grid.spacing)-grid.spacing
	local y = math.round(top,grid.spacing)-grid.spacing
	
	love.graphics.setColor(0,0,0)
	while x < right do
		if x/(10*grid.spacing) == math.floor(x/(10*grid.spacing)) then
			love.graphics.setColor(0,0,0)
			love.graphics.setLineWidth(8)
		elseif x/(2*grid.spacing) == math.floor(x/(2*grid.spacing)) then
			love.graphics.setColor(50,50,50)
			love.graphics.setLineWidth(5)
		else
			love.graphics.setColor(100,100,100)
			love.graphics.setLineWidth(2)
		end
		love.graphics.line(x,top,x,bottom)
		x = x + grid.spacing
	end
	while y < bottom do
		if y/(10*grid.spacing) == math.floor(y/(10*grid.spacing)) then
			love.graphics.setColor(0,0,0)
			love.graphics.setLineWidth(8)
		elseif y/(2*grid.spacing) == math.floor(y/(2*grid.spacing)) then
			love.graphics.setColor(50,50,50)
			love.graphics.setLineWidth(5)
		else
			love.graphics.setColor(100,100,100)
			love.graphics.setLineWidth(2)
		end
		
		love.graphics.line(left,y,right,y)
		y = y + grid.spacing
	end
end 


function getWorldScreenRect()
	local left,top = camera.x-camera.width/2/camera.xscale,camera.y - camera.height/2/camera.yscale
	return left,top,camera.width/camera.xscale,camera.height/camera.yscale
end




function math.round(x,n)
	local a =  math.floor(x/n)
	if x/n - a < 0.5 then
		return a * n
	end
	return n*a + n
end


