local addonName, Cell = ...

-- number of built-in indicators
Cell.defaults.builtIns = 26

Cell.defaults.indicatorIndices = {
    ["nameText"] = 1,
    ["statusText"] = 2,
    ["healthText"] = 3,
    ["healthThresholds"] = 4,
    ["statusIcon"] = 5,
    ["partyAssignmentIcon"] = 6,
    ["leaderIcon"] = 7,
    ["readyCheckIcon"] = 8,
    ["playerRaidIcon"] = 9,
    ["targetRaidIcon"] = 10,
    ["aggroBlink"] = 11,
    ["aggroBar"] = 12,
    ["aggroBorder"] = 13,
    ["aoeHealing"] = 14,
    ["externalCooldowns"] = 15,
    ["defensiveCooldowns"] = 16,
    ["allCooldowns"] = 17,
    ["dispels"] = 18,
    ["debuffs"] = 19,
    ["raidDebuffs"] = 20,
    ["targetedSpells"] = 21,
    ["targetCounter"] = 22,
    ["consumables"] = 23,
    ["missingBuffs"] = 24,
}

Cell.defaults.layout = {
    -- ["syncWith"] = "layoutName",
    ["main"] = {
        ["sortByRole"] = false,
        ["hideSelf"] = false,
        ["size"] = {66, 46},
        ["position"] = {},
        ["powerSize"] = 2,
        ["orientation"] = "vertical",
        ["anchor"] = "TOPLEFT",
        ["spacingX"] = 3,
        ["spacingY"] = 3,
        ["columns"] = 8,
        ["rows"] = 8,
        ["groupSpacing"] = 0,
    },
    ["pet"] = {
        ["partyEnabled"] = true,
        ["raidEnabled"] = false,
        ["sameSizeAsMain"] = true,
        ["sameArrangementAsMain"] = true,
        ["size"] = {66, 46},
        ["position"] = {},
        ["powerSize"] = 2,
        ["orientation"] = "vertical",
        ["anchor"] = "TOPLEFT",
        ["spacingX"] = 3,
        ["spacingY"] = 3,
    },
    ["npc"] = {
        ["enabled"] = true,
        ["separate"] = false,
        ["sameSizeAsMain"] = true,
        ["sameArrangementAsMain"] = true,
        ["size"] = {66, 46},
        ["position"] = {},
        ["powerSize"] = 2,
        ["orientation"] = "vertical",
        ["anchor"] = "TOPLEFT",
        ["spacingX"] = 3,
        ["spacingY"] = 3,
    },
    ["spotlight"] = {
        ["enabled"] = false,
        ["hidePlaceholder"] = false,
        ["units"] = {},
        ["sameSizeAsMain"] = true,
        ["sameArrangementAsMain"] = true,
        ["size"] = {66, 46},
        ["position"] = {},
        ["powerSize"] = 2,
        ["orientation"] = "vertical",
        ["anchor"] = "TOPLEFT",
        ["spacingX"] = 3,
        ["spacingY"] = 3,
    },
    ["barOrientation"] = {"horizontal", false},
    ["groupFilter"] = {true, true, true, true, true, true, true, true},
    ["powerFilters"] = {
        ["DRUID"] = true,
        ["HUNTER"] = true,
        ["MAGE"] = true,
        ["PALADIN"] = true,
        ["PRIEST"] = true,
        ["ROGUE"] = true,
        ["SHAMAN"] = true,
        ["WARLOCK"] = true,
        ["WARRIOR"] = true,
        ["PET"] = true,
        ["VEHICLE"] = true,
        ["NPC"] = true,
    },
    ["indicators"] = {
        {
            ["name"] = "Name Text",
            ["indicatorName"] = "nameText",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"CENTER", "CENTER", 0, 0},
            ["frameLevel"] = 1,
            ["font"] = {"Cell ".._G.DEFAULT, 13, "Shadow"},
            ["nameColor"] = {"custom", {1, 1, 1}},
            ["vehicleNamePosition"] = {"TOP", 0},
            ["textWidth"] = {"percentage", 0.75},
            ["showGroupNumber"] = false,
        }, -- 1
        {
            ["name"] = "Status Text",
            ["indicatorName"] = "statusText",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"BOTTOM", 0},
            ["frameLevel"] = 30,
            ["font"] = {"Cell ".._G.DEFAULT, 11, "Shadow"},
            ["showTimer"] = true,
            ["showBackground"] = true,
            ["colors"] = {
                ["AFK"] = {1, 0.19, 0.19, 1},
                ["OFFLINE"] = {1, 0.19, 0.19, 1},
                ["DEAD"] = {1, 0.19, 0.19, 1},
                ["GHOST"] = {1, 0.19, 0.19, 1},
                ["FEIGN"] = {1, 1, 0.12, 1},
                ["DRINKING"] = {0.12, 0.75, 1, 1},
                ["PENDING"] = {1, 1, 0.12, 1},
                ["ACCEPTED"] = {0.12, 1, 0.12, 1},
                ["DECLINED"] = {1, 0.19, 0.19, 1},
            },
        }, -- 2
        {
            ["name"] = "Health Text",
            ["indicatorName"] = "healthText",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["position"] = {"TOP", "CENTER", 0, -5},
            ["frameLevel"] = 2,
            ["font"] = {"Cell ".._G.DEFAULT, 10, "Shadow"},
            ["color"] = {1, 1, 1},
            ["format"] = "percentage",
            ["hideIfEmptyOrFull"] = true,
        }, -- 3
        {
            ["name"] = "Health Thresholds",
            ["indicatorName"] = "healthThresholds",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["thickness"] = 1,
            ["thresholds"] = {
                {0.35, {1, 0, 0, 1}},
            },
        }, -- 4
        {
            ["name"] = "Status Icon",
            ["indicatorName"] = "statusIcon",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"TOP", "TOP", 0, -3},
            ["frameLevel"] = 10,
            ["size"] = {18, 18},
        }, -- 5
        {
            ["name"] = "Party Assignment Icon",
            ["indicatorName"] = "partyAssignmentIcon",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"TOPLEFT", "TOPLEFT", 0, 0},
            ["size"] = {11, 11},
        }, -- 6
        {
            ["name"] = "Leader Icon",
            ["indicatorName"] = "leaderIcon",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["hideInCombat"] = true,
            ["position"] = {"TOPLEFT", "TOPLEFT", 0, -11},
            ["size"] = {11, 11},
        }, -- 7
        {
            ["name"] = "Ready Check Icon",
            ["indicatorName"] = "readyCheckIcon",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["frameLevel"] = 100,
            ["size"] = {16, 16},
        }, -- 8
        {
            ["name"] = "Raid Icon (player)",
            ["indicatorName"] = "playerRaidIcon",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"TOP", "TOP", 0, 3},
            ["frameLevel"] = 2,
            ["size"] = {14, 14},
            ["alpha"] = 0.77,
        }, -- 9
        {
            ["name"] = "Raid Icon (target)",
            ["indicatorName"] = "targetRaidIcon",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["position"] = {"TOP", "TOP", -14, 3},
            ["frameLevel"] = 2,
            ["size"] = {14, 14},
            ["alpha"] = 0.77,
        }, -- 10
        {
            ["name"] = "Aggro (blink)",
            ["indicatorName"] = "aggroBlink",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["position"] = {"TOPLEFT", "TOPLEFT", 0, 0},
            ["frameLevel"] = 3,
            ["size"] = {10, 10},
        }, -- 11
        {
            ["name"] = "Aggro (bar)",
            ["indicatorName"] = "aggroBar",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"BOTTOMLEFT", "TOPLEFT", 0, -1},
            ["frameLevel"] = 1,
            ["size"] = {20, 4},
        }, -- 12
        {
            ["name"] = "Aggro (border)",
            ["indicatorName"] = "aggroBorder",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["frameLevel"] = 7,
            ["thickness"] = 3,
        }, -- 13
        {
            ["name"] = "AoE Healing",
            ["indicatorName"] = "aoeHealing",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["height"] = 10,
            ["color"] = {1, 1, 0},
        }, -- 14
        {
            ["name"] = "External Cooldowns",
            ["indicatorName"] = "externalCooldowns",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"RIGHT", "RIGHT", 2, 5},
            ["frameLevel"] = 10,
            ["size"] = {12, 20},
            ["showDuration"] = false,
            ["num"] = 2,
            ["orientation"] = "right-to-left",
            ["font"] = {
                {"Cell ".._G.DEFAULT, 11, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
                {"Cell ".._G.DEFAULT, 11, "Outline", "BOTTOMRIGHT", 2, -1, {1, 1, 1}},
            },
        }, -- 15
        {
            ["name"] = "Defensive Cooldowns",
            ["indicatorName"] = "defensiveCooldowns",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"LEFT", "LEFT", -2, 5},
            ["frameLevel"] = 10,
            ["size"] = {12, 20},
            ["showDuration"] = false,
            ["num"] = 2,
            ["orientation"] = "left-to-right",
            ["font"] = {
                {"Cell ".._G.DEFAULT, 11, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
                {"Cell ".._G.DEFAULT, 11, "Outline", "BOTTOMRIGHT", 2, -1, {1, 1, 1}},
            },
        }, -- 16
        {
            ["name"] = "Externals + Defensives",
            ["indicatorName"] = "allCooldowns",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["position"] = {"LEFT", "LEFT", -2, 5},
            ["frameLevel"] = 10,
            ["size"] = {12, 20},
            ["showDuration"] = false,
            ["num"] = 2,
            ["orientation"] = "left-to-right",
            ["font"] = {
                {"Cell ".._G.DEFAULT, 11, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
                {"Cell ".._G.DEFAULT, 11, "Outline", "BOTTOMRIGHT", 2, -1, {1, 1, 1}},
            },
        }, -- 17
        {
            ["name"] = "Dispels",
            ["indicatorName"] = "dispels",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"BOTTOMRIGHT", "BOTTOMRIGHT", 0, 4},
            ["frameLevel"] = 15,
            ["size"] = {12, 12},
            ["dispellableByMe"] = true,
            ["highlightType"] = "gradient-half",
            ["showDispelTypeIcons"] = true,
            ["orientation"] = "right-to-left",
        }, -- 18
        {
            ["name"] = "Debuffs",
            ["indicatorName"] = "debuffs",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"BOTTOMLEFT", "BOTTOMLEFT", 1, 4},
            ["frameLevel"] = 2,
            ["size"] = {{13, 13}, {17, 17}},
            ["showDuration"] = false,
            ["showTooltip"] = false,
            ["num"] = 3,
            ["font"] = {
                {"Cell ".._G.DEFAULT, 11, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
                {"Cell ".._G.DEFAULT, 11, "Outline", "BOTTOMRIGHT", 2, -1, {1, 1, 1}},
            },
            ["dispellableByMe"] = false,
            ["orientation"] = "left-to-right",
        }, -- 19
        {
            ["name"] = "Raid Debuffs",
            ["indicatorName"] = "raidDebuffs",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["position"] = {"CENTER", "CENTER", 0, 3},
            ["frameLevel"] = 20,
            ["size"] = {22, 22},
            ["border"] = 2,
            ["num"] = 1,
            ["font"] = {
                {"Cell ".._G.DEFAULT, 11, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
                {"Cell ".._G.DEFAULT, 11, "Outline", "BOTTOMRIGHT", 2, -1, {1, 1, 1}},
            },
            ["onlyShowTopGlow"] = true,
            ["orientation"] = "left-to-right",
            ["showTooltip"] = false,
        }, -- 20
        {
            ["name"] = "Targeted Spells",
            ["indicatorName"] = "targetedSpells",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["showAllSpells"] = false,
            ["position"] = {"CENTER", "TOPLEFT", 7, -7},
            ["frameLevel"] = 50,
            ["size"] = {20, 20},
            ["border"] = 2,
            ["font"] = {"Cell ".._G.DEFAULT, 12, "Outline", "TOPRIGHT", 2, 1, {1, 1, 1}},
        }, -- 21
        {
            ["name"] = "Target Counter",
            ["indicatorName"] = "targetCounter",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["position"] = {"TOP", "TOP", 0, 5},
            ["frameLevel"] = 15,
            ["font"] = {"Cell ".._G.DEFAULT, 15, "Outline"},
            ["color"] = {1, 0.1, 0.1},
            ["filters"] = {
                ["outdoor"] = false,
                ["pve"] = false,
                ["pvp"] = true,
            },
        }, -- 22
        {
            ["name"] = "Consumables",
            ["indicatorName"] = "consumables",
            ["type"] = "built-in",
            ["enabled"] = true,
            ["speed"] = 1,
        }, -- 23
        {
            ["name"] = "Missing Buffs",
            ["indicatorName"] = "missingBuffs",
            ["type"] = "built-in",
            ["enabled"] = false,
            ["filters"] = {
                ["buffByMe"] = true,
                ["PWF"] = true,
                ["DS"] = true,
                ["SP"] = true,
                ["AB"] = true,
                ["MotW"] = true,
                ["BS"] = true,
                ["PALADIN"] = true,
            },
            ["position"] = {"BOTTOMRIGHT", "BOTTOMRIGHT", 0, 4},
            ["frameLevel"] = 10,
            ["size"] = {13, 13},
            ["num"] = 3,
            ["orientation"] = "right-to-left",
        }, -- 24
    },
}