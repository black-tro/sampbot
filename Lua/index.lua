local char ={}
function set_clipboard(text)
    io.popen('clip','w'):write(text):close()
end

function split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function givetxt()
    local f = io.open("C:/Users/Black_Tro/Documents/GTA San Andreas User Files/SAMP/chatlog.txt", "r")
    local lines = f:read("a")
    f:close()
    local liness = split(lines, "\n")
    local andis = #liness
    char = split(liness[andis-1], " ")
    local res = ""
    if char[2] == "KingBehi" then
        for i = 4, #char , 1 do
            res = res .. " " .. char[i]
        end
        set_clipboard(res)
    end
end

while true do
    givetxt()
  
end