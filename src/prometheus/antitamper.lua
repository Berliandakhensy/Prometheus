-- anti-tamper detection code in Lua

local function isTestMode()
    -- Check if the script is running in test mode
    -- You can implement your environment checking logic here
    return os.getenv("TEST_MODE") == "true"
end

local function antiDumpCheck()
    if not isTestMode() then
        error("Dump attempts are not allowed outside of test mode.")
    end
end

-- Call the anti-dump check on dump attempts 
function dump()
    antiDumpCheck()
    -- Your dump logic here
end

-- Example function that Lua/Luau tests can use
function exampleTestFunction()
    print("This function can run normally in test mode.")
end