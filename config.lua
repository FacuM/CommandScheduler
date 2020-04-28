-- Scheduled commands (by an specific time)
SCHEDULED_COMMANDS = {
  ["21:04:00"] = "say Hello world!",
  ["21:04:05"] = "say Hello world 2!"
}

-- Timed commands (by interval)
TIMED_COMMANDS = {
  "say Welcome to the facuarmo's server!",
  "say Feel free to check out the other servers.",
  "say There are two Counter-Strike 1.6 servers at facundomontero.com.ar:27015 and facundomontero.com.ar:27016",
  "say Thank you for playing!"
}

MAX_TIME_MILI = 30000
MAX_TIME_TICKS = (MAX_TIME_MILI / 1000) * 20
TICK_COUNT = 0
