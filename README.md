# The Scaffolding Framework

## General Information
The Scaffolding Framework is an open-source development framework for Minecraft: Java Edition created and organized by [Code_Zealot](https://codezealot.com)

At its core, The Scaffolding Framework is nothing more than a Minecraft datapack that comes with a corresponding resource pack. The Scaffolding Framework datapack serves as a manager for mix-and-match modules that give content creators the ability to create large-scale, optimized projects quickly and with ease. The resource pack is responsible for the rendering of custom models that complement the content included in the modules.

[Join the Discord Community](https://discord.gg/aFscs9y)


## Isues / feature requests
If you want to request a new module or feature for a module OR you have found a bug, please open a issue [here](issues)


## How to create a project using the Scaffolding Framework

Here is how you can build your next Minecraft: Java Edition project using the Scaffolding Framework:

- Place `The Scaffolding Framework DP` within your world's `datapacks` directory (more documentation on this coming soon)
- Place `The Scaffolding Framework RP` within your `.minecraft/resourcepacks` (more documentation on this coming soon)
- Choose which modules you would like to use and either disable or completely remove the remaining modules (a program created later so you can just choose what you which modules to include in your particular build).
- When you publish your project, you must place a link back to this github repository to credit the project (and as a result all of the contributors who made your project possible!).


## How to Enable/Disable Modules
All modules that belong to the Scaffolding Framework are enabled by invoking their `run.mcfunction` file from within the `main.mcfunction` file that belongs to the `scaffolding` namespace. A module's `run.mcfunction` file must be located in `The Scaffolding Framework DP/data/<namespace>/functions/`.

To disable a module, you can remove or comment out it's `run.mcfunction` file. Consider this example, which invokes the `tsf_r_click` module and also calls it's `reset.mcfunction` file at the end of the loop. The `reset.mcfunction` file should also be located in the same path as `run.mcfunction`


**The Scaffolding Framework BP/data/scaffolding/functions/main.mcfunction**
```mcfunction
###################################################################
#                                                                 #
# This project was generated using a tool created by Code_Zealot  #
#                                                                 #
#     Website: https://codezealot.com                             #
#     Channel: https://youtube.com/CodeZealot                     #
#     Twitter: @CodeZealotTuts                                    #
#                                                                 #
# --------------------------------------------------------------- #
#                         DATAPACK INFO                           #
# --------------------------------------------------------------- #
#                                                                 #
#     Author: Code_Zealot                                         #
#     URL: Listed Above                                           #
#                                                                 #
###################################################################

#Load modules by calling their run.mcfunction file

#Invoke Modules
function tsf_r_click:run

#Other modules can be enabled or disabled here. Consider the importance of execution order.
#A module hooking into tsf_r_click should be invoked after tsf_r_click, etc...
#tsf_some_module:run


#If a module requires a reset function, call it here at the end of the main loop
function tsf_r_click:reset
``` 


## How to Contribute
If you would like to contribute to this project, Please read [this document](CONTRIBUTING.md).


## Contributors
- [Code_Zealot](https://codezealot.com) | `contributor_id`: `0001`
- [Edaz](https://edazpotato.github.io) | `contributor_id`: `6969`
