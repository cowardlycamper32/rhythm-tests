function split(input, sep)
    if sep == nil then
        sep = sep or "%s"
    end
    if not(type(input) == "string") then
        error("attempt to split a non string value", 2)
    end
    local t = {}
    for s in string.gmatch(input, "([^"..sep.."]+)") do
        table.insert(t, s)
    end
    return t
end