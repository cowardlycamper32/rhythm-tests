require("helpers")

function whichSong()
    return "test1"
end

function takeLines(songFile)
    songFile = "songs/mappings/" .. songFile .. ".txt"
    songTable = {}
    for line in love.filesystem.lines(songFile) do
        table.insert(songTable, line)
    end
    print(songTable[1])

    return songTable
end

function splitData(line)
    local t = split(line)
    return t
end