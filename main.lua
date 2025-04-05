require("mapping_parser")

function love.load()
    MainTimer = {
        on = false;
        time = 0;
    }
    song = whichSong()
    songInfo = takeLines(song)
    songData = {}
    for _, line in ipairs(songInfo) do
        splitLine = splitData(line)
        table.insert(songData, splitLine)
    end

end

function timer_start(timer)
    timer.on = true
end

function timer_stop(timer)
    timer.on = false
end

function timer_reset(timer)
    timer.time = 0
end

function timer_tick(timer, dt)
    if timer.on == true then
        timer.time = timer.time + dt
        print(math.floor(timer.time*100)/100)
    end
    return timer
end

function love.update(dt)
    MainTimer = timer_tick(MainTimer, dt)
end

function love.keypressed(key)
    if key == "a" then
        timer_start(MainTimer)
        print("a pressed")
    end
    if key == "b" then
        timer_stop(MainTimer)
        print("b pressed")
    end
    if key == "c" then
        for _, data in ipairs(songData) do
            for _, innerData in ipairs(data) do
                print(innerData)
            end
        end
    end
    if key == "d" then
        timer_reset(MainTimer)
    end
    if key == "escape" then
        love.event.quit()
    end
end