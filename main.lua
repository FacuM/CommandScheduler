PLUGIN = nil
TIMED_COMMANDS_COUNT = 0

function Initialize(Plugin)
  Plugin:SetName("CommandScheduler")
  Plugin:SetVersion(1)

  dofile(cPluginManager:GetPluginsPath() .. "/InfoReg.lua")

  PLUGIN = Plugin

  -- Hooks
  cPluginManager:AddHook(cPluginManager.HOOK_TICK, UpdateCounter)

  for _, value in ipairs(TIMED_COMMANDS) do
    TIMED_COMMANDS_COUNT = TIMED_COMMANDS_COUNT + 1
  end

  LOG("Initialized " .. Plugin:GetName() .. " v" .. Plugin:GetVersion())

  return true
end

function UpdateCounter()
  if (TICK_COUNT >= MAX_TIME_TICKS) then
    TICK_COUNT = 0

    math.randomseed(os.time())
    rnd = math.random(1, TIMED_COMMANDS_COUNT)

    cRoot:Get():QueueExecuteConsoleCommand(TIMED_COMMANDS[rnd])
  end

  time = os.date("%H:%M:%S")

  for key, value in pairs(SCHEDULED_COMMANDS) do
    if (key == time and key ~= lastkey) then
      cRoot:Get():QueueExecuteConsoleCommand(SCHEDULED_COMMANDS[key])

      lastkey = key
    end
  end

  TICK_COUNT = TICK_COUNT + 1
end

function OnDisable()
  LOG(PLUGIN:GetName() .. " is shutting down...")
end
