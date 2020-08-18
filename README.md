# The Scaffolding Framework

## General Information
The Scaffolding Framework is an open-source development framework for Minecraft: Java Edition created and organized by [Code_Zealot](https://codezealot.com)

At its core, The Scaffolding Framework is nothing more than a Minecraft datapack that comes with a corresponding resource pack. The Scaffolding Framework datapack serves as a manager for mix-and-match modules that give content creators the ability to create large-scale, optimized projects quickly and with ease. The resource pack is responsible for the rendering of custom models that complement the content included in the modules.

[Join the Discord Community](https://discord.gg/aFscs9y)





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
If you would like to contribute to this project, you can submit a pull request. All contributions must follow the specfic conventions described below. If your contribution is deemed a good fit for the project, you will be listed below as a contributor and your content will be merged into the framework.

**Please note that by submitting content to this open-source project you acknowledge that you possess the rights to said content and that you understand that others shall be free to utilize your contributions without requesting your permission to do so and without having to explicitly credit you.**





## Project Specific Conventions - Datapack Content

### Namespaces
All namespaces must begin with `tsf_` and describe the modular content as concisely as is possible while still remaining human-readable. For example, if you are creating a module that provides the user with a way to use right-click detection `tsf_r_click` is a better namespace than `tsf_rcdetect`, `tsf_right_click_detection`, or `tsf_rcd`.

### Scoreboard Objectives

#### Objective Names
All scoreboard objective names must begin with `tsf_` and describe the purpose of the objective as best as possible with the remaining 12 characters. Camel casing is encouraged for scoreboard objective names. *The name you select must also be unique within the Scaffolding Framework*. It is your responsibility to make sure that your selected objective name is not currently in use within another module.

For example, if `tsf_rClickCOAS` was not currently in use as an objective name, an objective that keeps track of when a player right-clicks while holding a `minecraft:carrot_on_a_stick` could be declared as follows:


`/scoreboard objectives add tsf_rClickCOAS minecraft.used:minecraft.carrot_on_a_stick`

#### Adding and Removing Objectives
All modules must include the following functions: `add_objectives.mcfunction` and `remove_objectives.mcfunction`.

These functions must be located in the following path: `The Scaffolding Framework DP/data/<module_namespace>/functions/scripts/`

`add_objectives.mcfunction` must be called only once and within your module's `init.mcfunction` (see below)

`remove_objectives.mcfunction` does not need to be called within your module, but must be included. It should remove the objectives defined in your `add_objectives.mcfunction`.


### Initializing your module
Every module that is included within the Scaffolding Framework is initialized using a `/scoreboard` objective that is given a name as close to it's namespace as possible. This objective is the only objective within a module that may be added to the scoreboard outside of it's `add_objectives.mcfunction` (see above). Once the objective is added, an immediate test is made using `/execute unless...` to see if the `init.mcfunction` file has been invoked. This means the `init.mcfunction` file will only be called once. Consider this example taken from the `run.mcfunction` file of the `tsf_r_click` module.

**The Scaffolding Framework DP/data/tsf_r_click/functions/run.mcfunction**
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

#The module initialization objective is created
scoreboard objectives add tsf_RClick dummy

#Init module only once
execute unless score $init tsf_RClick matches 1 run function tsf_r_click:scripts/init


#The rest of your module's function calls here...




```




### CustomModelData
If your contribution uses `CustomModelData` you must assign a value that follows this format: `1-aaaa-bb-cccccc`.

Here is how the format breaks down (see the final example below after reading this break down):
- `1`: A leading 1 defines the value as an `int` since a leading `0` is not permitted by Minecraft `CustomModelData`
- `aaaa`: A self-assigned contributor id. You can use any value that is not currently in use. Your id must be unique and you must use this id for all future contributions.
- `bb`: A content category id, which makes it easy to quickly recognize and group content in the resource pack files. Use the key below to know which category id to provide.
	- `01`: A custom model for an item
	- `02`: A custom model for a block
	- `03`: A custom model for a mob
- `cccccc`: An incrementing content specific id.
	- This id should increment as you add content to categories. For example, your first item, block, and mob would all have the id of `000001`. This means you can contribute up to `999999` models for each content category!

Final Example: The value for the 10th item model submitted by contributor `2854` would be `1285401000010`. Here it is with hyphens: `1-2854-01-000010`

## Project Specific Conventions - Resource Pack Content

**CustomModelData**
See above


## Contributors
- [Code_Zealot](https://codezealot.com) | `contributor_id`: `0001`