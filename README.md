CommandScheduler
=============

This simple Cuberite plugin aims to provide an easy way for server administrators to manage commands that they will to schedule at either a specific time or within an interval.

### Installation
- Clone this repository to your `Plugins` directory, or download it as a ZIP file, create a directory with whatever name you want and unpack it there.

### Usage
- Open the file `config.lua` with your preferred text editor and set up your commands, some examples regarding the syntax of these settings are included. For clearance, intervals are expressed in milliseconds, real-world times are expressed as a 24-hour time (i.e.: 21:03:13 would be a valid definition).
- Enable the plugin and `/reload` your server.
- Enjoy!

### FAQ
- Can I reload this plugin?

Sure, this is Lua on C++, it won't crash, only those J guys do.

- Found a problem?

Create a [new issue](https://github.com/FacuM/CommandScheduler/issues/new), I'll be glad to help!

### License
This plugin is licensed under the [MIT License](LICENSE).
