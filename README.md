# PlugX Doorlock
Version: 1.0.0

A simple automatic night door lock system for FiveM servers using ox_doorlock, synced with cd_easytime, and notifications via ox_lib.
Locks doors at night and unlocks them in the morning automatically.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Features
    •    🌙 Automatic night lock for selected doors
    •    🌞 Automatic day unlock
    •    ⏰ Fully synced with cd_easytime
    •    🔔 Server-wide notifications when doors lock or unlock
    •    🧼 Clean, server-side logic (restart-safe)
    •    ✅ Easy to configure via config.lua

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Installation
    
Download / Copy this resource into your server’s resources folder, e.g.:
```resources/[custom]/ox_night_doorlock/```

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Dependencies:

    •    ox_lib
    •    ox_doorlock
    •    cd_easytime

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

 # Add the resource to your server.cfg after dependencies:
    •    ensure ox_lib
    •    ensure ox_doorlock
    •    ensure cd_easytime
    •    ensure plugx-doorlock

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Configure doors and hours
        -- Night lock times (GTA in-game hours)
        Config.LockHour = 22    -- 10 PM
        Config.UnlockHour = 6  -- 6 AM

        -- Doors to control**
        -- Use door IDs from ox_doorlock**

        -- to get door IDs, /Doorlock in game or your SQL OX_DOORLOCK THEN THE ID** 
        Config.Doors = {
        1,
        2,
        5,
        8
        }

        -- Notifications
        Config.Notify = true

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Usage
    •    Doors listed in Config.Doors automatically lock at night and unlock during the day.
    •    Notifications are sent to all players when the doors change state.
    •    No commands or items are required — everything is automatic.

⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻

# Notes
    •    Door IDs must match the IDs in your ox_doorlock config.
    •    Adjust CheckInterval if you want the system to check more or less frequently.
    •    Notifications use ox_lib and are server-wide.
