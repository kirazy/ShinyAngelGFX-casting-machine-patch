-- Copyright (c) 2021 Kirazy
-- Part of ShinyAngelGFX: Casting Machine Patch
--
-- See LICENSE.md in the project directory for license information.

local casting_machines = {
    "casting-machine",
    "casting-machine-2",
    "casting-machine-3",
    "casting-machine-4",
}

for _, name in pairs(casting_machines) do
    -- Fetch casting machine
    local casting_machine = data.raw["assembling-machine"][name]

    -- Check that the casting machine exists
    if not casting_machine then goto continue end

    -- Restore the fluid box using current configuration from Angel's github, retrieved 2020/11/06
    casting_machine.fluid_boxes = {
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {1, 2}}}
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-2, 1}}}
        },
        {
            production_type = "input",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
            production_type = "output",
            pipe_covers = pipecoverspictures(),
            base_area = 10,
            base_level = 1,
            pipe_connections = {{position = {2, -1}}}
        }
    }

    -- Label to continue to the next iteration
    ::continue::
end