--[[
    This was coded and rebuild by Pichocles#0427
    Love ya this is a rebuild of past codes and some improovements that some friends helped me with
    Enjoy this and if you find any bug just write me on discord (Pichocles#0427)
    With love Picho <3
]]

require_game_build(2964) -- (V1.67)

local function GetUndeadOffradar()
	if localplayer == nil then
		return nil
	end
	max_health = localplayer:get_max_health()
	return max_health < 100.0
end

local function SetUndeadOffradar(value)
	if value == nil or localplayer == nil then
		return
	end
	if value then
		max_health = localplayer:get_max_health()
		if max_health >= 100.0 then
			original_max_health = max_health
		end
		localplayer:set_max_health(0.0)
	else
		if original_max_health >= 100 then
			localplayer:set_max_health(original_max_health)
		else
			localplayer:set_max_health(328.0)
		end
	end
end

local Config = {}
Config.SubmenuStyle = false
Config.SlamType = 1
Config.SlamHeight = 1
Config.SlamTypes = {"Rhino", "Khanjali", "Halftrack"}
Config.VehicleSpawnGlobal = 2671449
Config.VehicleTypes = {}
Config.VehicleTypes["Super"] = {"Krieger", "Prototipo", "T20"}
Config.VehicleTypes["Sports"] = {"Kuruma", "Kuruma2"}
Config.VehicleTypes["Sports Classic"] = {"Toreador", "Artdent"}
Config.VehicleTypes["Millitary"] = {"Rhino", "Khanjali", "Halftrack"}
Config.VehicleTypes["Bikes"] = {"Oppressor", "Oppressor2", "Akuma"}
Config.VehicleTypes["Planes"] = {"Hydra", "Lazer", "Titan", "Cargoplane"}

local function safeLoop(state)
    while state do
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(1.5)
        stats.set_int("MP0_CLUB_POPULARITY", 1000)
        stats.set_int("MP0_CLUB_PAY_TIME_LEFT", -1)
        sleep(4)
    end
end

global_overridebase = 262145
fmC2020 = script("fm_mission_controller_2020") 
fmC = script("fm_mission_controller") 
PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") 
mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end xox_00 = 1 xox_01 = 1 xox_0 = 1 xox_1 = 1 xox_2 = 1 xox_3 = 1 xox_4 = 1 xox_5 = 1 xox_6 = 1 xox_7 = 1 xox_8 = 1 xox_9 = 1 xox_10 = 1 xox_11 = 1 xox_12 = 1 xox_13 = 1 xox_14 = 1 xox_15 = 1 xox_16 = 1 xox_17 = 1 xox_18 = 1 xox_19 = 1 xox_20 = 1 xox_21 = 1 xox_22 = 1 xox_23 = 1 xox_24 = 1 xox_25 = 1 xox_26 = 1 xox_27 = 1 xox_28 = 1 xox_29 = 1 xox_30 = 1 xox_31 = 1 xox_32 = 1 xox_33 = 1 xox_34 = 1 xox_35 = 1 e0 = false e1 = false e2 = false e3 = false e4 = false e5 = false e6 = false e7 = false e8 = false e9 = false e10 = false e11 = false e12 = false e13 = false e14 = false e15 = false e16 = false e17 = false e18 = false e19 = false e20 = false e21 = false e22 = false e23 = false e24 = false e25 = false e26 = false e27 = false e28 = false e29 = false e30 = false e31 = false e32 = false e33 = false e34 = false e35 = false e36 = false e37 = false e38 = false e39 = false e40 = false e41 = false e42 = false e43 = false e44 = false e45 = false e46 = false e47 = false e48 = false e49 = false e50 = false 

local function setrank()
	if boolrp then
		globals.set_int(1853910 + 1 + ply + 205 + 6, rank)
		if rank <= 8000 then
			local schwonz = math.floor(rpfromwikibecausezjzsaidthaticantcodecplusplus[rank] + randomslonshit2)
			globals.set_int(1853910 + 1 + ply + 205 + 1, schwonz)
		end
	else
		globals.set_int(1853910 + 1 + ply + 205 + 6, rank)
	end
end

local function setbmoney()
	globals.set_int(1853910 + 1 + ply + 205 + 56, bmoney)  
end

local function setmoney()
	globals.set_int(1853910 + 1 + ply + 205 + 3, money)  
end

local function setkills()
	if not boolkd then
		globals.set_int(1853910 + 1 + ply + 205 + 28, kills)
	end
end
local function setdeaths()
	if not boolkd then
		globals.set_int(1853910 + 1 + ply + 205 + 29, deaths)
	end
end

local function resetoverrideBounty()
	globals.set_int(global_overridebase + 2348, 2000)
	globals.set_int(global_overridebase + 2349, 4000)
	globals.set_int(global_overridebase + 2350, 6000)
	globals.set_int(global_overridebase + 2351, 8000)
	globals.set_int(global_overridebase + 2352, 10000)
	globals.set_int(global_overridebase + 7105, 1000)
end

local function setkills2()
		local valuekd = globals.get_float(1853910 + 1 + ply + 205 + 26)
		local egothisscriptisstolen = math.floor(valuekd * randomslonshit1)
		globals.set_int(1853910 + 1 + ply + 205 + 28, egothisscriptisstolen)
end
local function setdeaths2()
		globals.set_int(1853910 + 1 + ply + 205 + 29, randomslonshit1)
end

local function GetPlayerCount()
	return player.get_number_of_players()
end

local function setkd()
	if boolkd then
		globals.set_float(1853910 + 1 + ply + 205 + 26, kd)
		kills2_key = menu.register_hotkey(122, setkills2)
		removeset7 = 1
		deaths2_key = menu.register_hotkey(122, setdeaths2)
		removeset8 = 1
	else
		globals.set_float(1853910 + 1 + ply + 205 + 26, kd)
	end
end

local function Text(text) menu.add_action(text, function() end) end local fmC2020 = script("fm_pichocles_script_2022") local fmC = script("fm_pichocles_script") local PlayerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") local mpx = PlayerIndex if PlayerIndex == 0 then mpx = "MP0_" else mpx = "MP1_" end local xox_00 = 1 local xox_01 = 1 local xox_0 = 1 local xox_1 = 1 local xox_2 = 1 local xox_3 = 1 local xox_4 = 1 local xox_5 = 1 local xox_6 = 1 local xox_7 = 1 local xox_8 = 1 local xox_9 = 1 local xox_10 = 1 local xox_11 = 1 local xox_12 = 1 local xox_13 = 1 local xox_14 = 1 local xox_15 = 1 local xox_16 = 1 local xox_17 = 1 local xox_18 = 1 local xox_19 = 1 local xox_20 = 1 local xox_21 = 1 local xox_22 = 1 local xox_23 = 1 local xox_24 = 1 local xox_25 = 1 local xox_26 = 1 local xox_27 = 1 local xox_28 = 1 local xox_29 = 1 local xox_30 = 1 local xox_31 = 1 local xox_32 = 1 local xox_33 = 1 local xox_34 = 1 local xox_35 = 1 local e0 = false local e1 = false local e2 = false local e3 = false local e4 = false local e5 = false local e6 = false local e7 = false local e8 = false local e9 = false local e10 = false local e11 = false local e12 = false local e13 = false local e14 = false local e15 = false local e16 = false local e17 = false local e18 = false local e19 = false local e20 = false local e21 = false local e22 = false local e23 = false local e24 = false local e25 = false local e26 = false local e27 = false local e28 = false local e29 = false local e30 = false local e31 = false local e32 = false local e33 = false local e34 = false local e35 = false local e36 = false local e37 = false local e38 = false local e39 = false local e40 = false local function TP(x, y, z, yaw, roll, pitch) if localplayer:is_in_vehicle() then localplayer:get_current_vehicle():set_position(x, y, z) localplayer:get_current_vehicle():set_rotation(yaw, roll, pitch) else localplayer:set_position(x, y, z) localplayer:set_rotation(yaw, roll, pitch) end end local mainMenu = menu.add_submenu("Ryze Script ")

modelMenu = mainMenu:add_submenu("Self")

modelMenu:add_action("----------------- Self ----------------", function() end)

badSp = modelMenu:add_submenu("Malos Perdedores")
modSp = modelMenu:add_submenu("Modificaciones")

--Removed fast Run & Reload

modSp:add_action("Rellenar Inv y Armadura", function()	stats.set_int(mpx .. "NO_BOUGHT_YUM_SNACKS", 30) stats.set_int(mpx .. "NO_BOUGHT_HEALTH_SNACKS", 15) stats.set_int(mpx .. "NO_BOUGHT_EPIC_SNACKS", 5) stats.set_int(mpx .. "NUMBER_OF_CHAMP_BOUGHT", 5) stats.set_int(mpx .. "NUMBER_OF_ORANGE_BOUGHT", 11) stats.set_int(mpx .. "NUMBER_OF_BOURGE_BOUGHT", 10) stats.set_int(mpx .. "CIGARETTES_BOUGHT", 20) stats.set_int(mpx .. "MP_CHAR_ARMOUR_1_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_2_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_3_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_4_COUNT", 10) stats.set_int(mpx .. "MP_CHAR_ARMOUR_5_COUNT", 10) stats.set_int(mpx .. "BREATHING_APPAR_BOUGHT", 20) end) 


-- Removed BadSport related

modelMenu:add_action("----------------- Misc ----------------", function() end)

appMenu = modelMenu:add_submenu("Apariencia")

local PedSelf = {}
PedSelf[joaat("mp_m_freemode_01")] = "Hombre"
PedSelf[joaat("mp_f_freemode_01")] = "Mujer"

appMenu:add_array_item("Cambio de Genero", {"OFF", "ON"}, function() 
	return xox_15 end, function(aph) 
		if aph == 1 then stats.set_int(mpx .. "ALLOW_GENDER_CHANGE", 0)
	elseif aph == 2 then stats.set_int(mpx .. "ALLOW_GENDER_CHANGE", 52)
	end xox15 = aph 
end)

OnlMenu = mainMenu:add_submenu("Online")

OnlMenu:add_array_item("Sesiones Online", {"Unirse Sesion publica", "Iniciar Sesion Publica", "Sesion de invitacion", "Sesion cerrada de crew", "Sesion por crew", "Sesion cerrrada de amigos", "Encontrar Sesion por jugadores", "Sesion Solo"}, function() return xox_00 end, function(value) xox_00 = value if value == 1 then globals.set_int(1575017, 0) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 2 then globals.set_int(1575017, 1) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 3 then globals.set_int(1575017, 11) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 4 then globals.set_int(1575017, 2) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 5 then globals.set_int(1575017, 3) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 6 then globals.set_int(1575017, 6) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 7 then globals.set_int(1575017, 9) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 8 then globals.set_int(1575017, 8) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) elseif value == 9 then globals.set_int(1575017, -1) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) end end)

repMenu = OnlMenu:add_submenu("Ver Reportes")

repMenu:add_action("Borrar Reportes Activos", function() stats.set_int("MPPLY_REPORT_STRENGTH", 0) stats.set_int("MPPLY_COMMEND_STRENGTH", 0) stats.set_int("MPPLY_GRIEFING", 0) stats.set_int("MPPLY_VC_ANNOYINGME", 0) stats.set_int("MPPLY_VC_HATE", 0) stats.set_int("MPPLY_TC_ANNOYINGME", 0) stats.set_int("MPPLY_TC_HATE", 0) stats.set_int("MPPLY_OFFENSIVE_LANGUAGE", 0) stats.set_int("MPPLY_OFFENSIVE_TAGPLATE", 0) stats.set_int("MPPLY_OFFENSIVE_UGC", 0) stats.set_int("MPPLY_BAD_CREW_NAME", 0) stats.set_int("MPPLY_BAD_CREW_MOTTO", 0) stats.set_int("MPPLY_BAD_CREW_STATUS", 0) stats.set_int("MPPLY_BAD_CREW_EMBLEM", 0) stats.set_int("MPPLY_EXPLOITS", 0) stats.set_int("MPPLY_BECAME_BADSPORT_NUM", 0) stats.set_int("MPPLY_DESTROYED_PVEHICLES", 0) stats.set_int("MPPLY_BADSPORT_MESSAGE", 0) stats.set_int("MPPLY_GAME_EXPLOITS", 0) stats.set_int("MPPLY_PLAYER_MENTAL_STATE", 0) stats.set_int("MPPLY_PLAYERMADE_TITLE", 0) stats.set_int("MPPLY_PLAYERMADE_DESC", 0) stats.set_int("MPPLY_ISPUNISHED", 0) stats.set_int("MPPLY_WAS_I_BAD_SPORT", 0) stats.set_int("MPPLY_WAS_I_CHEATER", 0) stats.set_int("MPPLY_CHAR_IS_BADSPORT", 0) stats.set_int("MPPLY_OVERALL_BADSPORT", 0) stats.set_int("MPPLY_OVERALL_CHEAT", 0) end)
repMenu:add_action("--------------------------------------", function() end)
repMenu:add_bare_item("", function() return "Grifear:".. (string.format("%03d", stats.get_int("MPPLY_GRIEFING"))) end, function() end, function()end, function() return end)
repMenu:add_bare_item("", function() return "Hacks:".. (string.format("%03d", stats.get_int("MPPLY_EXPLOITS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Acoso textual:".. (string.format("%03d", stats.get_int("MPPLY_TC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal hablado:".. (string.format("%03d", stats.get_int("MPPLY_TC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal hablado x2:".. (string.format("%03d", stats.get_int("MPPLY_VC_ANNOYINGME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal hablado x3:".. (string.format("%03d", stats.get_int("MPPLY_VC_HATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Lenguaje ofensivo:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_LANGUAGE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Id ofensivo:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_TAGPLATE"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Contenido ofensivo:".. (string.format("%03d", stats.get_int("MPPLY_OFFENSIVE_UGC"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal nombre de crew:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_NAME"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal nombre de MC:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_MOTTO"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal estado de crew:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_STATUS"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Mal emblema de crew:".. (string.format("%03d", stats.get_int("MPPLY_BAD_CREW_EMBLEM"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Amiwito:".. (string.format("%03d", stats.get_int("MPPLY_FRIENDLY"))) end, function() end, function()end, function()end)
repMenu:add_bare_item("", function() return "Ayudante:".. (string.format("%03d", stats.get_int("MPPLY_HELPFUL"))) end, function() end, function()end, function()end)

OnlMenu:add_action("----------------- Misiones/Online ----------------", function() end)

OnlMenu:add_array_item("Pedir Servicios", {"M.O.C", "Avenger", "TerrorByte", "Kosatka", "Bote", "Armadura Balistica"}, function() return xox_01 end, function(v) if v == 1 then globals.set_int(2815059 + 913, 1) elseif v == 2 then globals.set_int(2815059 + 921, 1) elseif v == 3 then globals.set_int(2815059 + 925, 1) elseif v == 4 then globals.set_int(2815059 + 933, 1) elseif v == 5 then globals.set_int(2815059 + 945, 1) else globals.set_int(2815059 + 884, 1) end xox_01 = v end)

repvehmenu = OnlMenu:add_submenu("Opciones Para Autos")
 
repvehmenu:add_action("Destruir Todos Los Carros", function() for v in replayinterface.get_vehicles() do if v ~= nil then v:set_health(0) end end end)
 
repvehmenu:add_action("Reparar Todos Los Carros", function() for v in replayinterface.get_vehicles() do if v ~= nil then v:set_health(1000) end end end)

OnlMenu:add_action("Resetear Servicio de Lester (bounty)", function()
    resetoverrideBounty()
end)

function orb(e) if not localplayer then return end if e then stats.set_int(mpx.."ORBITAL_CANNON_COOLDOWN", 0) else stats.get_int(mpx.."ORBITAL_CANNON_COOLDOWN") end end
OnlMenu:add_action("Quitar Delay Cañon Orbital", function() return e2 end, function() e2 = not e2 orb(e2) end)

-- Removed transaction error
OnlMenu:add_action("Remove CEO Cooldown", function() stats.set_int("MPPLY_VIPGAMEPLAYDISABLETIMER", 0) end)
OnlMenu:add_action("Saltar misiones de Lamar", function() stats.set_bool(mpx .. "LOW_FLOW_CS_DRV_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_TRA_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_FUN_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_PHO_SEEN", true) stats.set_bool(mpx .. "LOW_FLOW_CS_FIN_SEEN", true) stats.set_bool(mpx .. "LOW_BEN_INTRO_CS_SEEN", true) stats.set_int(mpx .. "LOWRIDER_FLOW_COMPLETE", 4) stats.set_int(mpx .. "LOW_FLOW_CURRENT_PROG", 9) stats.set_int(mpx .. "LOW_FLOW_CURRENT_CALL", 9) stats.set_int(mpx .. "LOW_FLOW_CS_HELPTEXT", 66) end) 
OnlMenu:add_action("Saltar Misiones Yate", function() stats.set_int(mpx .. "YACHT_MISSION_PROG", 0) stats.set_int(mpx .. "YACHT_MISSION_FLOW", 21845) stats.set_int(mpx .. "CASINO_DECORATION_GIFT_1", -1) end)
-- Removed Peyote unlocker

-- Removed CEO related

OnlMenu:add_toggle("Fuera Del Radar", GetUndeadOffradar, SetUndeadOffradar)

local function ToggleUndeadOffradar()
	value = GetUndeadOffradar()
	if value ~= nil then
		SetUndeadOffradar(not value)
	end
end



OnlMenu:add_action("----------------- Recovery ----------------", function() end)

OnlMenu:add_action("Habilidades 100%", function()
	stats.set_int(mpx .. "SCRIPT_INCREASE_DRIV", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_FLY", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_LUNG", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_SHO", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_STAM", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_STL", 100)
	stats.set_int(mpx .. "SCRIPT_INCREASE_STRN", 100)
end)

-- Removed RP correction

OnlMenu:add_action("Completar Objetivos", function() stats.set_int(mpx .. "COMPLETEDAILYOBJ", 100) stats.set_int(mpx .. "COMPLETEDAILYOBJTOTAL", 100) stats.set_int(mpx .. "TOTALDAYCOMPLETED", 100) stats.set_int(mpx .. "TOTALWEEKCOMPLETED", 400) stats.set_int(mpx .. "TOTALMONTHCOMPLETED", 1800) stats.set_int(mpx .. "CONSECUTIVEDAYCOMPLETED", 30) stats.set_int(mpx .. "CONSECUTIVEWEEKCOMPLETED", 4) stats.set_int(mpx .. "CONSECUTIVEMONTHCOMPLETE", 1) stats.set_int(mpx .. "COMPLETEDAILYOBJSA", 100) stats.set_int(mpx .. "COMPLETEDAILYOBJTOTALSA", 100) stats.set_int(mpx .. "TOTALDAYCOMPLETEDSA", 100) stats.set_int(mpx .. "TOTALWEEKCOMPLETEDSA", 400) stats.set_int(mpx .. "TOTALMONTHCOMPLETEDSA", 1800) stats.set_int(mpx .. "CONSECUTIVEDAYCOMPLETEDSA", 30) stats.set_int(mpx .. "CONSECUTIVEWEEKCOMPLETEDSA", 4) stats.set_int(mpx .. "CONSECUTIVEMONTHCOMPLETESA", 1) stats.set_int(mpx .. "AWD_DAILYOBJCOMPLETEDSA", 100) stats.set_int(mpx .. "AWD_DAILYOBJCOMPLETED", 100) stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUS", true) stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUS", true) stats.set_bool(mpx .. "AWD_DAILYOBJWEEKBONUSSA", true) stats.set_bool(mpx .. "AWD_DAILYOBJMONTHBONUSSA", true) end) 

WepMenu = OnlMenu:add_submenu("Desbloquear Armas")

WepMenu:add_action("Revolver de Doble Accion",function()
if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8)<3) then
	stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 3, 24, 8)
end
if (stats.get_masked_int(mpx.."GANGOPSPSTAT_INT102", 24, 8) > 3) then
	stats.set_masked_int(mpx.."GANGOPSPSTAT_INT102", 0, 24, 8)
end
end)
	
WepMenu:add_action("Hacha de Piedra",function()
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)<5)then
	stats.set_masked_int("MP_NGDLCPSTAT_INT0", 5, 16, 8)
end
if (stats.get_masked_int("MP_NGDLCPSTAT_INT0", 16, 8)>5)then
	stats.set_masked_int("MP_NGDLCPSTAT_INT0", 0, 16, 8)
end	
end)

WepMenu:add_toggle("Poder Acha De Piedra Infinita", function() return e1 end, function() e1 = not e1 iSH(e1) end)

statMenu = OnlMenu:add_submenu("Editor de stat")
normalstat = statMenu:add_submenu("Personaje")
distancestat = statMenu:add_submenu("Distancia")
timestat = statMenu:add_submenu("Tiempo")

normalstat:add_float_range("Estado mental", 1.0, 0.0, 100, function() return stats.get_float("MPPLY_PLAYER_MENTAL_STATE") end, function(value) stats.set_float(mpx .. "PLAYER_MENTAL_STATE", value) stats.set_float("MPPLY_PLAYER_MENTAL_STATE", value) end)
normalstat:add_int_range("Dinero conseguido total", 500000, 0, 1000000000, function() return stats.get_int("MPPLY_TOTAL_EVC") end, function(value) stats.set_int("MPPLY_TOTAL_EVC",value) end)
normalstat:add_int_range("Dinero gastado", 500000, 0, 1000000000, function() return stats.get_int("MPPLY_TOTAL_SVC") end, function(value) stats.set_int("MPPLY_TOTAL_SVC",value) end)
normalstat:add_int_range("Jugadores moridos", 10, 0, 999999, function() return stats.get_int("MPPLY_KILLS_PLAYERS") end, function(value) stats.set_int("MPPLY_KILLS_PLAYERS", value) end)
normalstat:add_int_range("Cuantas veces has muerto por j", 10, 0, 999999, function() return stats.get_int("MPPLY_DEATHS_PLAYER") end, function(value) stats.set_int("MPPLY_DEATHS_PLAYER", value) end)
normalstat:add_float_range("PvP K/D Ratio", 0.01, 0, 9999, function() return stats.get_float("MPPLY_KILL_DEATH_RATIO") end, function(value) stats.set_float("MPPLY_KILL_DEATH_RATIO", value) end)
normalstat:add_int_range("Deathmatches Publicados", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_DM_MADE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_DM_MADE", value) end)
normalstat:add_int_range("carreras Publicadas", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_RACES_MADE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_RACES_MADE", value) end)
normalstat:add_int_range("Capturas publicadas", 10, 0, 999999, function() return stats.get_int("MPPLY_NUM_CAPTURES_CREATED") end, function(value) stats.set_int("MPPLY_NUM_CAPTURES_CREATED", value) end)
normalstat:add_int_range("LTS Publicadas", 10, 0, 999999, function() return stats.get_int("MPPLY_LTS_CREATED") end, function(value) stats.set_int("MPPLY_LTS_CREATED", value) end)
normalstat:add_int_range("Personas que han jugado tus M", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP", value) end)
normalstat:add_int_range("Likes a tus contenidos", 10, 0, 999999, function() return stats.get_int("MPPLY_AWD_FM_CR_MISSION_SCORE") end, function(value) stats.set_int("MPPLY_AWD_FM_CR_MISSION_SCORE", value) end)
normalstat:add_int_range("Reiniciar LSCM (No para desbloquear)", 1, 1, 11, function() return 0 end, function(V) if V == 1 then vt = 5 elseif V == 2 then vt = 415 elseif V == 3 then vt = 1040 elseif V == 4 then vt = 3665 elseif V == 5 then vt = 10540 elseif V == 6 then vt = 20540 elseif V == 7 then vt = 33665 elseif V == 8 then vt = 49915 elseif V == 9 then vt = 69290 elseif V == 10 then vt = 91790 else vt = 117430 end stats.set_int(mpx .. "CAR_CLUB_REP", vt) end) 
normalstat:add_action("~[1/5/10/25/50/75/100/125/150/175/200]", function() end) 
normalstat:add_action("-{Cambia de sesion para aplicar}", function() end)

normalstat:add_action("-----------------------------------------", function() end)
normalstat:add_int_range("Remover Dinero", 1000000, 1000000, 2000000000, function() return globals.get_int(282478) end, function(value) globals.set_int(282478, value) end) 
normalstat:add_action("Pon el valor y despues compra algo.", function() end)
normalstat:add_action("-----------------------------------------", function() end)

distancestat:add_float_range("Viajado (metros)", 10.00, 0.00, 99999.00, function() return stats.get_float("MPPLY_CHAR_DIST_TRAVELLED")/1000 end, function(value) stats.set_float("MPPLY_CHAR_DIST_TRAVELLED", value*1000) end)
distancestat:add_float_range("Nadado", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_SWIMMING")/1000 end, function(value) stats.set_float(mpx.."DIST_SWIMMING", value*1000) end)
distancestat:add_float_range("Caminando", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_WALKING")/1000 end, function(value) stats.set_float(mpx.."DIST_WALKING", value*1000) end)
distancestat:add_float_range("Corriendo", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_RUNNING")/1000 end, function(value) stats.set_float(mpx.."DIST_RUNNING", value*1000) end)
distancestat:add_float_range("Caida libre mas sobrevivida", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_SURVIVED_FREEFALL") end, function(value) stats.set_float(mpx.."LONGEST_SURVIVED_FREEFALL", value) end)
distancestat:add_float_range("Conduccion de coches", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_CAR")/1000 end, function(value) stats.set_float(mpx.."DIST_CAR", value*1000) end)
distancestat:add_float_range("Conducir motos", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BIKE")/1000 end, function(value) stats.set_float(mpx.."DIST_BIKE", value*1000) end)
distancestat:add_float_range("Volando helis", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_HELI")/1000 end, function(value) stats.set_float(mpx.."DIST_HELI", value*1000) end)
distancestat:add_float_range("Volando aviones", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_PLANE")/1000 end, function(value) stats.set_float(mpx.."DIST_PLANE", value*1000) end)
distancestat:add_float_range("Conduciendo botes", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BOAT")/1000 end, function(value) stats.set_float(mpx.."DIST_BOAT", value*1000) end)
distancestat:add_float_range("Conduciendo ATVs", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_QUADBIKE")/1000 end, function(value) stats.set_float(mpx.."DIST_QUADBIKE", value*1000) end)
distancestat:add_float_range("Conduciendo Bicycletas", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."DIST_BICYCLE")/1000 end, function(value) stats.set_float(mpx.."DIST_BICYCLE", value*1000) end)
distancestat:add_float_range("Parada mas lejana", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_STOPPIE_DIST")/1000 end, function(value) stats.set_float(mpx.."LONGEST_STOPPIE_DIST", value*1000) end)
distancestat:add_float_range("Sobre 1 rueda mas lejana", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_WHEELIE_DIST")/1000 end, function(value) stats.set_float(mpx.."LONGEST_WHEELIE_DIST", value*1000) end)
distancestat:add_float_range("Conduccion mas larga sin estrellarte", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LONGEST_DRIVE_NOCRASH")/1000 end, function(value) stats.set_float(mpx.."LONGEST_DRIVE_NOCRASH", value*1000) end)
distancestat:add_float_range("Salto mas largo en veh", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."FARTHEST_JUMP_DIST") end, function(value) stats.set_float(mpx.."FARTHEST_JUMP_DIST", value) end)
distancestat:add_float_range("Salto mas alto en veh", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."HIGHEST_JUMP_REACHED") end, function(value) stats.set_float(mpx.."HIGHEST_JUMP_REACHED", value) end)
distancestat:add_float_range("Salto hidraulico mas alto", 10.00, 0.00, 99999.00, function() return stats.get_float(mpx.."LOW_HYDRAULIC_JUMP") end, function(value) stats.set_float(mpx.."LOW_HYDRAULIC_JUMP", value) end)

timestat:add_int_range("Tiempo en primera persona", 1, 0, 24, function() return math.floor(stats.get_int("MP_FIRST_PERSON_CAM_TIME")/86400000) end, function(value) stats.set_int("MP_FIRST_PERSON_CAM_TIME", value*86400000) end)
timestat:add_int_range("Tiempo en gta online", 1, 0, 24, function() return math.floor(stats.get_int("MP_PLAYING_TIME")/86400000) end, function(value) stats.set_int("MP_PLAYING_TIME", value*86400000) end)
timestat:add_int_range("Tiempo en dm's", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_SPENT_DEATHMAT", value*86400000) end)
timestat:add_int_range("Tiempo en carreras", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_SPENT_RACES")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_SPENT_RACES", value*86400000) end)
timestat:add_int_range("Tiempo en modo creador", 1, 0, 24, function() return math.floor(stats.get_int("MPPLY_TOTAL_TIME_MISSION_CREATO")/86400000) end, function(value) stats.set_int("MPPLY_TOTAL_TIME_MISSION_CREATO", value*86400000) end)
timestat:add_int_range("Sesion mas larga solo", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."LONGEST_PLAYING_TIME")/86400000) end, function(value) stats.set_int(mpx.."LONGEST_PLAYING_TIME", value*86400000) end)
timestat:add_int_range("Tiempo como personaje", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TOTAL_PLAYING_TIME")/86400000) end, function(value) stats.set_int(mpx.."TOTAL_PLAYING_TIME", value*86400000) end)
timestat:add_int_range("Tiempo promedio en sesiones", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."AVERAGE_TIME_PER_SESSON")/86400000) end, function(value) stats.set_int(mpx.."AVERAGE_TIME_PER_SESSON", value*86400000) end)
timestat:add_int_range("Tiempo nadando", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_SWIMMING")/86400000) end, function(value) stats.set_int(mpx.."TIME_SWIMMING", value*86400000) end)
timestat:add_int_range("Tiempo bajo el awa", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_UNDERWATER")/86400000) end, function(value) stats.set_int(mpx.."TIME_UNDERWATER", value*86400000) end)
timestat:add_int_range("Tiempo caminando", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_WALKING")/86400000) end, function(value) stats.set_int(mpx.."TIME_WALKING", value*86400000) end)
timestat:add_int_range("Tiempo en cobertura", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_IN_COVER")/86400000) end, function(value) stats.set_int(mpx.."TIME_IN_COVER", value*86400000) end)
timestat:add_int_range("Tiempo con estreias", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TOTAL_CHASE_TIME")/86400000) end, function(value) stats.set_int(mpx.."TOTAL_CHASE_TIME", value*86400000) end)
timestat:add_float_range("Ultima duracion wantiado", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."LAST_CHASE_TIME")/86400000) end, function(value) stats.set_float(mpx.."LAST_CHASE_TIME", value*86400000) end)
timestat:add_float_range("Duracion wantiada mas larga", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."LONGEST_CHASE_TIME")/86400000) end, function(value) stats.set_float(mpx.."LONGEST_CHASE_TIME", value*86400000) end)
timestat:add_float_range("5 estreias", 1.0, 0.0, 24.0, function() return math.floor(stats.get_float(mpx.."TOTAL_TIME_MAX_STARS")/86400000) end, function(value) stats.set_float(mpx.."TOTAL_TIME_MAX_STARS", value*86400000) end)
timestat:add_action("Me dio pereza, es tiempo", function() end)
timestat:add_int_range("Condusiendo coches", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_CAR")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_CAR", value*86400000) end)
timestat:add_int_range("En moto", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BIKE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BIKE", value*86400000) end)
timestat:add_int_range("En chop-chops", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_HELI")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_HELI", value*86400000) end)
timestat:add_int_range("En aviones", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_PLANE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_PLANE", value*86400000) end)
timestat:add_int_range("En botes", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BOAT")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BOAT", value*86400000) end)
timestat:add_int_range("Conduciendo ATVs", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_QUADBIKE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_QUADBIKE", value*86400000) end)
timestat:add_int_range("En motos", 1, 0, 24, function() return math.floor(stats.get_int(mpx.."TIME_DRIVING_BICYCLE")/86400000) end, function(value) stats.set_int(mpx.."TIME_DRIVING_BICYCLE", value*86400000) end)

multMenu = OnlMenu:add_submenu("Multiplicadores (Sin Testear)")
multMenu:add_float_range("RP", 1, 1, 100000, function() return globals.get_float(262146) end, function(v) globals.set_float(262146, v) end)
multMenu:add_float_range("AP", 1, 1, 100000, function() return globals.get_float(288059) end, function(v) globals.set_float(288059, v) end)
multMenu:add_float_range("Carreras Callejeras", 1, 1, 100000, function() return globals.get_float(293782) end, function(v) globals.set_float(293782, v) end)
multMenu:add_float_range("Persecuciones", 1, 1, 100000, function() return globals.get_float(293783) end, function(v) globals.set_float(293783, v) end)
multMenu:add_float_range("Cara a Cara", 1, 1, 100000, function() return globals.get_float(293785) end, function(v) globals.set_float(293785, v) end)
multMenu:add_float_range("LS Car Meet", 1, 1, 100000, function() return globals.get_float(293786) end, function(v) globals.set_float(293786, v) end)
multMenu:add_float_range("LS Car Meet en Carrera", 1, 1, 100000, function() return globals.get_float(293787) end, function(v) globals.set_float(293787, v) end) local awa = 0 local awc = 0 local awr = 0
multMenu:add_int_range("AP Arena Wars", 5000, 0, 500000, function() return awa end, function(v) for i = 286231, 286233 do globals.set_int(i, v) end for j = 286240, 286242 do globals.set_int(j, v) end awa = v end)

OnlMenu:add_action("--------------- Recovery / Misiones ----------------", function() end)

local function Cctv(e) if not localplayer then return end if e then menu.remove_cctvs() else menu.remove_cctvs(nil) end end
cayoPericoMenu = OnlMenu:add_submenu("Cayo Perico (Sin Testear)") cayoPericoMenu:add_array_item("Configs", {"H.Panther Only", "H.PinkD Only", "H.B.Bonds Only", "H.R.Necklace Only", "H.Tequila Only", "N.Panther Only", "N.PinkD Only", "N.B.Bonds Only", "N.R.Necklace Only", "N.Tequila Only"}, function() return xox_15 end, function(v) if v == 1 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 5) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT_V", 403500) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 2 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 3) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 3 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 2) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 4 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 1) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 5 then stats.set_int(mpx.."H4_PROGRESS", 131055) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 0) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 6 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 5) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 7 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 3) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 8 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 2) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 9 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 1) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT_V", 403500) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) stats.set_int(mpx.."H4LOOT_COKE_I", 0) elseif v == 10 then stats.set_int(mpx.."H4_PROGRESS", 126823) stats.set_int(mpx.."H4_MISSIONS", 65535) stats.set_int(mpx.."H4CNF_TARGET", 0) stats.set_int(mpx.."H4CNF_WEAPONS", 2) stats.set_int(mpx.."H4CNF_UNIFORM", -1) stats.set_int(mpx.."H4CNF_TROJAN", 5) stats.set_int(mpx.."H4LOOT_GOLD_C", 0) stats.set_int(mpx.."H4LOOT_GOLD_C_SCOPED", 0) stats.set_int(mpx.."H4LOOT_PAINT", 0) stats.set_int(mpx.."H4LOOT_PAINT_SCOPED", 0) stats.set_int(mpx.."H4LOOT_CASH_I", 0) stats.set_int(mpx.."H4LOOT_CASH_C", 0) stats.set_int(mpx.."H4LOOT_WEED_I", 0) end xox_15 = v end)
cayoPericoMenu:add_array_item("Objetivos principales", {"Tequila", "Ruby Necklace", "Bearer Bonds", "Pink Diamond", "Panther Statue"}, function() return xox_0 end, function(value) xox_0 = value if value == 1 then stats.set_int(mpx .. "H4CNF_TARGET", 0) elseif value == 2 then stats.set_int(mpx .. "H4CNF_TARGET", 1) elseif value == 3 then stats.set_int(mpx .. "H4CNF_TARGET", 2) elseif value == 4 then stats.set_int(mpx .. "H4CNF_TARGET", 3) elseif value == 5 then stats.set_int(mpx .. "H4CNF_TARGET", 5) end end)
StMenu = cayoPericoMenu:add_submenu("Objetivos secundarios") 
StMenu:add_array_item("Almacenes de la isla", {"Gold", "Paintings", "Cocaine", "Weed", "Cash"}, function() return xox_1 end, function(value) if value == 1 then stats.set_int(mpx .. "H4LOOT_GOLD_C", -1) stats.set_int(mpx .. "H4LOOT_GOLD_C_SCOPED", -1) elseif value == 2 then stats.set_int(mpx .. "H4LOOT_PAINT", -1) stats.set_int(mpx .. "H4LOOT_PAINT_SCOPED", -1) stats.set_int(mpx .. "H4LOOT_PAINT_V", 403500) elseif value == 3 then stats.set_int(mpx .. "H4LOOT_COKE_C", -1) stats.set_int(mpx .. "H4LOOT_COKE_C_SCOPED", -1) elseif value == 4 then stats.set_int(mpx .. "H4LOOT_WEED_C", -1) stats.set_int(mpx .. "H4LOOT_WEED_C_SCOPED", -1) elseif value == 5 then stats.set_int(mpx .. "H4LOOT_CASH_C", -1) stats.set_int(mpx .. "H4LOOT_CASH_C_SCOPED", -1) end xox_1 = value end)
cayoPericoMenu:add_action("Todas las preparativas", function() stats.set_int(mpx .. "H4CNF_BS_GEN", -1) stats.set_int(mpx .. "H4CNF_BS_ENTR", 63) stats.set_int(mpx .. "H4CNF_APPROACH", -1) end) 
cayoPericoMenu:add_action("-------------------------", function() end)
cayoPericoMenu:add_toggle("Remover camaras", function() return e6 end, function() e6 = not e6 Cctv(e6) end) 
cayoPericoMenu:add_action("Saltar escena del drenaje", function() if fmC2020:is_active() then if fmC2020:get_int(27500) >= 3 or fmC2020:get_int(27500) <= 6 then fmC2020:set_int(27500, 6) end end end) 
cayoPericoMenu:add_action("Saltar escena Clonar Huellas", function() if fmC and fmC:is_active() then if fmC:get_int(52962) == 4 then fmC:set_int(52962, 5) end end end)
cayoPericoMenu:add_action("Saltar escena de hackear puerta", function() if fmC and fmC:is_active() then if fmC:get_int(54024) ~= 4 then fmC:set_int(54024, 5) end end end)
cayoPericoMenu:add_action("Terminar Instantaneo", function() fmC2020:set_int(42280, 51338752) fmC2020:set_int(43655, 50) end)
cayoPericoMenu:add_action("Usa unos segundos despues ", function() end)
cayoPericoMenu:add_action("de la cinematica", function() end)
cayoPericoMenu:add_action("------------ Rapido -------------", function() end)
cayoPericoMenu:add_action("Completar Las Preparaciones", function() stats.set_int(mpx .. "H4CNF_UNIFORM", -1) stats.set_int(mpx .. "H4CNF_GRAPPEL", -1) stats.set_int(mpx .. "H4CNF_TROJAN", 5) stats.set_int(mpx .. "H4CNF_WEP_DISRP", 3) stats.set_int(mpx .. "H4CNF_ARM_DISRP", 3) stats.set_int(mpx .. "H4CNF_HEL_DISRP", 3) end)
cayoPericoMenu:add_action("Terminar Instantaneamente", function() fmC2020:set_int(38397, 51338752) fmC2020:set_int(39772, 50) end)

nMenu = OnlMenu:add_submenu("Club Nocturno")
nMenu:add_action("Popularidad al 100%", function() stats.set_int(mpx .. "CLUB_POPULARITY", 1000) end)

cccMenu = OnlMenu:add_submenu("Casino (Sin Testear)")

local function casCctv(e) if not localplayer then return end if e then menu.remove_cctvs() else menu.remove_cctvs(nil) end end 
cccMenu:add_array_item("Objetivo", {"Dinero", "Oro", "Arte", "Diamantes"}, function() return xox_8 end, function(v) if v == 1 then stats.set_int(mpx .. "H3OPT_TARGET", 0) elseif v == 2 then stats.set_int(mpx .. "H3OPT_TARGET", 1) elseif v == 3 then stats.set_int(mpx .. "H3OPT_TARGET", 2) elseif v == 4 then stats.set_int(mpx .. "H3OPT_TARGET", 3) end xox_8 = v end)
cccMenu:add_action("---[[Completar preparaciones - Final]]--", function() stats.set_int(mpx .. "H3OPT_DISRUPTSHIP", 3) stats.set_int(mpx .. "H3OPT_KEYLEVELS", 2) stats.set_int(mpx .. "H3OPT_VEHS", 3) stats.set_int(mpx .. "H3OPT_WEAPS", 0) stats.set_int(mpx .. "H3OPT_BITSET0", -1) stats.set_int(mpx .. "H3OPT_BITSET1", -1) stats.set_int(mpx .. "H3OPT_COMPLETEDPOSIX", -1) end)
cccMenu:add_action("---[[Reiniciar Golpes]]---", function() stats.set_int(mpx .. "H3OPT_BITSET1", 0) stats.set_int(mpx .. "H3OPT_BITSET0", 0) end) 
cccMenu:add_action("------------------------------------------", function() end)
cccMenu:add_action("Todos los puntos de acceso", function() stats.set_int(mpx .. "H3OPT_POI", -1) stats.set_int(mpx .. "H3OPT_ACCESSPOINTS", -1) end)
cccMenu:add_action("Remover Cooldown Del Golpe", function() stats.set_int(mpx .. "H3_COMPLETEDPOSIX", -1) stats.set_int("MPPLY_H3_COOLDOWN", -1) end)
cccMenu:add_action("Primero golpe/Desbloquea lester", function() stats.set_int(mpx .. "CAS_HEIST_NOTS", -1) stats.set_int(mpx .. "CAS_HEIST_FLOW", -1) end) local function DCHC(e) if not localplayer then return end if e then for i = 290950, 290964 do globals.set_int(i, 0) end globals.set_int(290600, 0) else globals.set_int(290600, 5) globals.set_int(290950, 5) globals.set_int(290951, 9) globals.set_int(290952, 7) globals.set_int(290953, 10) globals.set_int(290954, 8) globals.set_int(290955, 5) globals.set_int(290956, 7) globals.set_int(290957, 9) globals.set_int(290958, 6) globals.set_int(290959, 10) globals.set_int(290960, 3) globals.set_int(290961, 7) globals.set_int(290962, 5) globals.set_int(290963, 10) globals.set_int(290964, 9) end end 
cccMenu:add_toggle("Remover Costos De Lester", function() return e8 end, function() e8 = not e8 DCHC(e8) end) 
cccMenu:add_action("--------", function() end) 
cccMenu:add_int_range("Vidas Del Casino - Tu Solo", 1, 1, 10, function() return fmC:get_int(26105 + 1322 + 1) end, function(life) if fmC and fmC:is_active() then fmC:set_int(26105 + 1322 + 1,life) end end)
cccMenu:add_action("Suicidarse", function() menu.suicide_player() end) 
cccMenu:add_action("Quitar Hackeo De Huellas ", function() if fmC and fmC:is_active() then if fmC:get_int(52962) == 4 then fmC:set_int(52962, 5) end end end)
cccMenu:add_action("Quitar Hackeo De Puerta ", function() if fmC and fmC:is_active() then if fmC:get_int(54024) ~= 4 then fmC:set_int(54024, 5) end end end)
cccMenu:add_action("Quitar Perforar Boveda", function() if fmC:is_active() then fmC:set_int(10098 + 7, 4) sleep(0.01) fmC:set_int(10098 + 7, 6) menu.send_key_press(1) end end)
cccMenu:add_toggle("Quitar CCTV", function() return e7 end, function() e7 = not e7 casCctv(e7) end) 
cccMenu:add_action("Matar NPC De La Mision", function() menu.kill_all_mission_peds() end) 
cccMenu:add_action("Matar Todos los NPC", function() menu.kill_all_npcs() end)
cccMenu:add_int_range("Real Take", 100000, 1000000, 10000000, function() return fmC:get_int(22365) end, function(v) fmC:set_int(22365, v) end)
CDNCMenu = cccMenu:add_submenu("Cantidades") 
CDNCMenu:add_array_item("Presets", {"85 all", "100 all"}, function() return xox_34 end, function(G) if G == 1 then for i = 1973221, 1973224 do globals.set_int(i, 85) end elseif G == 2 then for i = 1973221, 1973224 do globals.set_int(i, 100) end end xox_34 = value end)
CDNCMenu:add_int_range("Jugador 1", 5, 15, 300, function() return globals.get_int(1973221) end, function(value) globals.set_int(1973221, value) end) 
CDNCMenu:add_int_range("Jugador 2", 5, 15, 300, function() return globals.get_int(1973222) end, function(value) globals.set_int(1973222, value) end) 
CDNCMenu:add_int_range("Jugador 3", 5, 15, 300, function() return globals.get_int(1973223) end, function(value) globals.set_int(1973223, value) end) 
CDNCMenu:add_int_range("Jugador 4", 5, 15, 300, function() return globals.get_int(1973224) end, function(value) globals.set_int(1973224, value) end) 
CDNPMenu = cccMenu:add_submenu("Editor Potencial")
CDNPMenu:add_int_range("Dinero Potencial", 1000000000.0, 2115000, 1000000000, function() return globals.get_int(290938) end, function(value) globals.set_int(290938, value) end) 
CDNPMenu:add_int_range("Arte Potencial", 1000000000.0, 2350000, 1000000000, function() return globals.get_int(290939) end, function(value) globals.set_int(290939, value) end) 
CDNPMenu:add_int_range("Oro Potencial", 1000000000.0, 2585000, 1000000000, function() return globals.get_int(290940) end, function(value) globals.set_int(290940, value) end) 
CDNPMenu:add_int_range("Diamante Potencial", 1000000000.0, 3290000, 1000000000, function() return globals.get_int(290941) end, function(value) globals.set_int(290941, value) end) 
cccMenu:add_array_item("Teletransportes", {"Vault swipe", "Staff Door Exit", "Laundry room", "Bonus room", "Roof exit"}, function() return xox_14 end, function(value) if value == 1 then TP(2468.646973, -279.083374, -71.994194, -1.083554, 0.000000, 0.000000) elseif value == 2 then TP(2547.458496, -277.744507, -59.741863, -0.071993, 0.005218, -0.113118) elseif value == 3 then TP(2536.455078, -300.772522, -60.022968, 0.000000, 0.000000, 0.000000) elseif value == 4 then TP(2521.906494, -287.172882, -60.022964, 0.000000, 0.000000, 0.000000) elseif value == 5 then TP(2522.338379, -248.534760, -25.414972, 0.000000, 0.000000, 0.000000) end xox_14 = value end)

csMenu = OnlMenu:add_submenu("Contratos")

script_name = "fm_mission_controller_2020"
AutoShop_passed_trigger = 38397
AutoShop_heist_passed_value = 39772

csMenu:add_action("Terminar misiones de DRE", function()
	PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		stats.set_int("MP0_FIXER_STORY_BS", 4092)
		stats.set_int("MP0_FIXER_STORY_STRAND", -1)
	else
		stats.set_int("MP1_FIXER_STORY_BS", 4092)
		stats.set_int("MP1_FIXER_STORY_STRAND", -1)
	end
end)

csMenu:add_action("Saltar Golpe (instantaneo)", function()
    if(script(script_name):is_active()) then
        script(script_name):set_int(AutoShop_passed_trigger, 51338976)
        script(script_name):set_int(AutoShop_heist_passed_value, 101)
    end
end)


protMenu = mainMenu:add_submenu("Protecciones 'Test'")

local function Text(text)
	protMenu:add_action(text, function() end)
end

Text("Protecciones (Sin Testear)")
Text("----------")

local function AntiMod(bool)
	if bool then
		globals.set_bool(1669394 + 792, true)
		globals.set_bool(1669394 + 504, true)
	else
		globals.set_bool(1669394 + 792, false)
		globals.set_bool(1669394 + 504, false)
	end
end

local function KickCrashes(bool)
	if bool then 
		globals.set_bool(1670036, true)
		globals.set_bool(1670051, true)
		globals.set_bool(1669951, true)
		globals.set_bool(1670028, true)
		globals.set_bool(1670238, true)
	else
		globals.set_bool(1670036, false)
		globals.set_bool(1670051, false)
		globals.set_bool(1669951, false)
		globals.set_bool(1670028, false)
		globals.set_bool(1670238, false)
	end
end

local function CeoKick(bool)
	if bool then 
		globals.set_bool(1669984, true) 
	else
		globals.set_bool(1669984, false)
	end
end

local function CeoBan(bool)
	if bool then 
		globals.set_bool(1670006, true) 
	else
		globals.set_bool(1670006, false)
	end
end

local function SoundSpam(bool)
	if bool then 
		globals.set_bool(1669879, true)
		globals.set_bool(1670243, true)
		globals.set_bool(1669394, true)
		globals.set_bool(1670529, true)
		globals.set_bool(1670058, true)
		globals.set_bool(1669421, true)

	else
		globals.set_bool(1669879, false)
		globals.set_bool(1670243, false) 
		globals.set_bool(1669394, false) 
		globals.set_bool(1670529, false)
		globals.set_bool(1670058, false)
		globals.set_bool(1669421, false)
	end
end

local function InfiniteLoad(bool)
	if bool then 		
		globals.set_bool(1669947, true) 
		globals.set_bool(1670076, true)
	else
		globals.set_bool(1669947, false)
		globals.set_bool(1670076, false)
	end
end


local function Collectibles(bool)
	if bool then 
		globals.set_bool(1670208, true) 
	else
		globals.set_bool(1670208, false)
	end
end

local function PassiveMode(bool)
	if bool then 
		globals.set_bool(1669996, true) 
	else
		globals.set_bool(1669996, false)
	end
end

local function TransactionError(bool) 
	if bool then 
		globals.set_bool(1669797, true) 
	else
		globals.set_bool(1669797, false)
	end
end

local function RemoveMoneyMessage(bool) 
	if bool then 
		globals.set_bool(1669880, true)
		globals.set_bool(1669426, true)
		globals.set_bool(1670057, true)
		globals.set_bool(1669428, true)
	else
		globals.set_bool(1669880, false)
		globals.set_bool(1669426, false)
		globals.set_bool(1670057, false)
		globals.set_bool(1669428, false)
	end
end

local function ExtraTeleport(bool) 
	if bool then 
		globals.set_bool(1669741, true) 
		globals.set_bool(1670138, true) 
	else
		globals.set_bool(1669741, false) 
		globals.set_bool(1670138, false) 
	end
end


local function ClearWanted(bool) 
	if bool then 
		globals.set_bool(1669938, true)
	else
		globals.set_bool(1669938, false)
	end
end

local function OffTheRadar(bool) 
	if bool then 
		globals.set_bool(1669940, true)
	else
		globals.set_bool(1669940, false)
	end
end

local function SendCutscene(bool) 
	if bool then 
		globals.set_bool(1670198, true)
	else
		globals.set_bool(1670198, false)
	end
end

local function Godmode(bool) 
	if bool then 
		globals.set_bool(1669396, true)
	else
		globals.set_bool(1669396, false)
	end
end

local function PersonalVehicleDestroy(bool) 
	if bool then 
		globals.set_bool(1669480, true)
		globals.set_bool(1670063, true) 
		globals.set_bool(1669947, true)
		
	else
		globals.set_bool(1669480, false)
		globals.set_bool(1670063, false) 
		globals.set_bool(1669947, false) 
	end
end

local function All(bool) 
	CeoKick(bool)
	CeoBan(bool)
	SoundSpam(bool)
	InfiniteLoad(bool)
	PassiveMode(bool)
	TransactionError(bool)
	RemoveMoneyMessage(bool)
	ClearWanted(bool)
	OffTheRadar(bool)
	PersonalVehicleDestroy(bool)
	SendCutscene(bool)
	Godmode(bool)
	Collectibles(bool)
	ExtraTeleport(bool)
	KickCrashes(bool)
	AntiMod(bool)
end

protMenu:add_toggle("Activar todo", function()
	return boolall
end, function()
	boolall = not boolall
	All(boolall)
	
end)
Text("--")

protMenu:add_toggle("Block Remote-Modifications", function()
	return boolsec
end, function()
	boolsec = not boolsec
	AntiMod(boolsec)
	
end)

protMenu:add_toggle("Blockear SE Crash", function()
	return boolcbt
end, function()
	boolcbt = not boolcbt
	KickCrashes(boolcbt)
	
end)

protMenu:add_toggle("Bloquear Ceo Kick", function()
	return boolktsp
end, function()
	boolktsp = not boolktsp
	CeoKick(boolktsp)
end)

protMenu:add_toggle("Bloquear Ceo Ban", function()
	return boolcb
end, function()
	boolcb = not boolcb
	CeoBan(boolcb)
	
end)

protMenu:add_toggle("Bloquear sonido no deseado", function()
	return boolsps
end, function()
	boolsps = not boolsps
	SoundSpam(boolsps)
	
end)

protMenu:add_toggle("Bloquear pantalla de carga infinita", function()
	return boolil
end, function()
	boolil = not boolil
	InfiniteLoad(boolil)
	
end)

protMenu:add_toggle("Bloquear modo pasivo", function()
	return boolb
end, function()
	boolb = not boolb
	PassiveMode(boolb)
	
end)

protMenu:add_toggle("Bloquear error de transacción", function()
	return boolte
end, function()
	boolte = not boolte
	TransactionError(boolte)
	
end)

protMenu:add_toggle("Bloquear notificaciones modificadas/SMS", function()
	return boolrm
end, function()
	boolrm = not boolrm
	RemoveMoneyMessage(boolrm)
	
end)

protMenu:add_toggle("Bloquear Borrar buscado", function()
	return boolclw
end, function()
	boolclw = not boolclw
	ClearWanted(boolclw)
	
end)

protMenu:add_toggle("Bloquear fuera del radar", function()
	return boolotr
end, function()
	boolotr = not boolotr
	OffTheRadar(boolotr)
	
end)

protMenu:add_toggle("Bloquear destrucción de vehículos personales", function()
	return boolpvd
end, function()
	boolpvd = not boolpvd
	PersonalVehicleDestroy(boolpvd)
	
end)

protMenu:add_toggle("Bloquear enviar a escena", function()
	return boolstc
end, function()
	boolstc = not boolstc
	SendCutscene(boolstc)
	
end)

protMenu:add_toggle("Bloquear Eliminar Modo Dios", function()
	return boolgod
end, function()
	boolgod = not boolgod
	Godmode(boolgod)
	
end)

protMenu:add_toggle("Bloquear dar coleccionables", function()
	return boolgc
end, function()
	boolgc = not boolgc
	Collectibles(boolgc)
	
end)

protMenu:add_toggle("Bloquear Cayo perico y tp a la playa", function()
	return boolcbt
end, function()
	boolcbt = not boolcbt
	ExtraTeleport(boolcbt)
	
end)

vehMenu = mainMenu:add_submenu("Vehiculos")

vehMenu:add_toggle("Modo Dios Vehiculo", function() return vehiclegodmode end, function() if localplayer ~= nil and localplayer:is_in_vehicle() then localplayer:get_current_vehicle():set_godmode(true) end end)

F1Mod = false
OldF1Hash = 0
vehMenu:add_toggle("Ruedas de Formula 1", function()
	return F1Mod
end, function()
	F1Mod = not F1Mod
	if F1Mod then
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				OldF1Hash = localplayer:get_current_vehicle():get_model_hash()
				localplayer:get_current_vehicle():set_model_hash(1492612435)
			end
		end
	else
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				localplayer:get_current_vehicle():set_model_hash(OldF1Hash)
			end
		end
	end
end)

BennyMod = false
OldBennyHash = 0
vehMenu:add_toggle("Ruedas de Bennys", function()
	return BennyMod
end, function()
	BennyMod = not BennyMod
	if BennyMod then
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				OldBennyHash = localplayer:get_current_vehicle():get_model_hash()
				localplayer:get_current_vehicle():set_model_hash(196747873)
			end
		end
	else
		if localplayer ~= nil then
			if localplayer:is_in_vehicle() then
				localplayer:get_current_vehicle():set_model_hash(OldBennyHash)
			end
		end
	end
end)

recMenu = mainMenu:add_submenu("Recovery $$$")
recMenu:add_action("No me hago responsable", function() end)
recMenu:add_action("De mal uso", function() end)

recMenu:add_action("----------------- Desbloqueos ----------------", function() end)

recMenu:add_action("Desbloquear Todo", function()
for i = 293419, 293446 do globals.set_float(i,100000) end end)

rec2Menu = recMenu:add_submenu("Desbloqueos De Bools")
rec2Menu:add_action("ARENAWARSPSTAT_BOOL", function()	for j = 0, 63 do for i = 0, 8 do stats.set_bool_masked(mpx.."ARENAWARSPSTAT_BOOL"..i, true, j, mpx) end end end)
rec2Menu:add_action("BUSINESSBATPSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."BUSINESSBATPSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("CASINOHSTPSTAT_BOOL", function()	for j = 0, 63 do for f = 0, 4 do stats.set_bool_masked(mpx.."CASINOHSTPSTAT_BOOL"..f, true, j, mpx) end end end)
rec2Menu:add_action("CASINOPSTAT_BOOL", function() for j = 0, 63 do for h = 0, 6 do stats.set_bool_masked(mpx.."CASINOPSTAT_BOOL"..h, true, j, mpx) end end end)
rec2Menu:add_action("DLCSMUGCHARPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."DLCSMUGCHARPSTAT_BOOL0", true, j, mpx) end end)
rec2Menu:add_action("DLCGUNPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL"..c, true, j, mpx) end end end)
rec2Menu:add_action("DLCBIKEPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."DLCBIKEPSTAT_BOOL"..c, true, j, mpx) end end end)
rec2Menu:add_action("FIXERTATTOOSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."FIXERTATTOOSTAT_BOOL0", true, j, mpx) end end)
rec2Menu:add_action("FIXERPSTAT_BOOL", function()	for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."FIXERPSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("GANGOPSPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."GANGOPSPSTAT_BOOL0", true, j, mpx) end end) 
rec2Menu:add_action("GUNTATPSTAT_BOOL", function() for j = 0, 63 do for g = 0, 5 do stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL"..g, true, j, mpx) end end end)
rec2Menu:add_action("HEIST3TATTOOSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."HEIST3TATTOOSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("HISLANDPSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."HISLANDPSTAT_BOOL"..c, true, j, mpx) end end end)
rec2Menu:add_action("MP_NGDLCPSTAT_BOOL", function() for j = 0, 63 do stats.set_bool_masked(mpx.."MP_NGDLCPSTAT_BOOL0", true, j, mpx) end end)
rec2Menu:add_action("MP_NGPSTAT_BOOL", function()	for j = 0, 63 do stats.set_bool_masked(mpx.."MP_NGPSTAT_BOOL0", true, j, mpx) end end)
rec2Menu:add_action("MP_PSTAT_BOOL", function() for j = 0, 63 do for c = 0, 2 do stats.set_bool_masked(mpx.."MP_PSTAT_BOOL"..c, true, j, mpx) end end end)
rec2Menu:add_action("MP_TUPSTAT_BOOL", function()	for j = 0, 63 do stats.set_bool_masked(mpx.."MP_TUPSTAT_BOOL0", true, j, mpx) end end)
rec2Menu:add_action("NGDLCPSTAT_BOOL", function()	for j = 0, 63 do for e = 0, 3 do stats.set_bool_masked(mpx.."NGDLCPSTAT_BOOL"..e, true, j, mpx) end end end)
rec2Menu:add_action("NGTATPSTAT_BOOL", function()	for j = 0, 63 do for g = 0, 5 do stats.set_bool_masked(mpx.."NGTATPSTAT_BOOL"..g, true, j, mpx) end end end) 
rec2Menu:add_action("NGPSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."NGPSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("PSTAT_BOOL", function() for j = 0, 63 do for d = 1, 2 do stats.set_bool_masked(mpx.."PSTAT_BOOL"..d, true, j, mpx) end end end) 
rec2Menu:add_action("SU20TATTOOSTAT_BOOL", function()	for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."SU20TATTOOSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("SU20PSTAT_BOOL", function() for j = 0, 63 do for b = 0, 1 do stats.set_bool_masked(mpx.."SU20PSTAT_BOOL"..b, true, j, mpx) end end end)
rec2Menu:add_action("TUNERPSTAT_BOOL", function()	for j = 0, 63 do for i = 0, 8 do stats.set_bool_masked(mpx.."TUNERPSTAT_BOOL"..i, true, j, mpx) end end end)
rec2Menu:add_action("TUPSTAT_BOOL", function() for j = 0, 63 do for z = 0, 11 do stats.set_bool_masked(mpx.."TUPSTAT_BOOL"..z, true, j, mpx) end end end)

recMenu:add_action("----------------- Bunker ----------------", function() end)

recMenu:add_action("Desbloquear Investi De bunker", function()
	for j = 0, 63 do
		stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL0", true, j, mpx)
		stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL1", true, j, mpx)
		stats.set_bool_masked(mpx.."DLCGUNPSTAT_BOOL2", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL0", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL1", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL2", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL3", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL4", true, j, mpx)
		stats.set_bool_masked(mpx.."GUNTATPSTAT_BOOL5", true, j, mpx)
	end
	bitSize = 8 for j = 0, 64 / bitSize - 1 do
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT0", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT1", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT2", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT3", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT4", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT5", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT6", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT7", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT8", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT9", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT10", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT11", -1, j * bitSize, bitSize)
	 stats.set_masked_int(mpx.."GUNRPSTAT_INT12", -1, j * bitSize, bitSize)
	end
end)

recMenu:add_array_item("Inve De Bunker", {"Acelerar", "Resetear"}, function() return xox_26 end, function(value) if value == 1 then globals.set_int(283484, 1) globals.set_int(283736, 1) globals.set_int(283737, 1) globals.set_int(283738, 1) menu.trigger_bunker_research() elseif value == 2 then globals.set_int(283484, 60) globals.set_int(283737, 45000) globals.set_int(283736, 300000) globals.set_int(283738, 45000) end xox_26 = value end)

recMenu:add_action("----------------- Misc ----------------", function() end)

recMenu:add_action("Desbloquear Contactos", function()
	stats.set_int(mpx .. "FM_ACT_PHN", -1)
	stats.set_int(mpx .. "FM_ACT_PH2", -1)
	stats.set_int(mpx .. "FM_ACT_PH3", -1)
	stats.set_int(mpx .. "FM_ACT_PH4", -1)
	stats.set_int(mpx .. "FM_ACT_PH5", -1)
	stats.set_int(mpx .. "FM_VEH_TX1", -1)
	stats.set_int(mpx .. "FM_ACT_PH6", -1)
	stats.set_int(mpx .. "FM_ACT_PH7", -1)
	stats.set_int(mpx .. "FM_ACT_PH8", -1)
	stats.set_int(mpx .. "FM_ACT_PH9", -1)
	stats.set_int(mpx .. "FM_CUT_DONE", -1)
	stats.set_int(mpx .. "FM_CUT_DONE_2", -1)
end)

recMenu:add_action("Desbloquear Pinturas/Cosas De LSC", function()
	stats.set_int(mpx .. "CHAR_FM_CARMOD_1_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_2_UNLCK",-1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_3_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_4_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_5_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_6_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_FM_CARMOD_7_UNLCK", -1)
	stats.set_int(mpx .. "AWD_WIN_CAPTURES", 50)
	stats.set_int(mpx .. "AWD_DROPOFF_CAP_PACKAGES", 100)
	stats.set_int(mpx .. "AWD_KILL_CARRIER_CAPTURE", 100)
	stats.set_int(mpx .. "AWD_FINISH_HEISTS", 50)
	stats.set_int(mpx .. "AWD_FINISH_HEIST_SETUP_JOB", 50)
	stats.set_int(mpx .. "AWD_NIGHTVISION_KILLS", 100)
	stats.set_int(mpx .. "AWD_WIN_LAST_TEAM_STANDINGS", 50)
	stats.set_int(mpx .. "AWD_ONLY_PLAYER_ALIVE_LTS", 50)
	stats.set_int(mpx .. "AWD_FMRALLYWONDRIVE", 25)
	stats.set_int(mpx .. "AWD_FMRALLYWONNAV", 25)
	stats.set_int(mpx .. "AWD_FMWINSEARACE", 25)
	stats.set_int(mpx .. "AWD_RACES_WON", 50)
	stats.set_int(mpx .. "MOST_FLIPS_IN_ONE_JUMP", 5)
	stats.set_int(mpx .. "MOST_SPINS_IN_ONE_JUMP", 5)
	stats.set_int(mpx .. "NUMBER_SLIPSTREAMS_IN_RACE", 100)
	stats.set_int(mpx .. "NUMBER_TURBO_STARTS_IN_RACE", 50)
	stats.set_int(mpx .. "RACES_WON", 50)
	stats.set_int(mpx .. "USJS_COMPLETED", 50)
	stats.set_int(mpx .. "AWD_FM_GTA_RACES_WON", 50)
	stats.set_int(mpx .. "AWD_FM_RACE_LAST_FIRST", 25)
	stats.set_int(mpx .. "AWD_FM_RACES_FASTEST_LAP", 50)
	stats.set_int(mpx .. "AWD_FMBASEJMP", 25)
	stats.set_int(mpx .. "AWD_FMWINAIRRACE", 25)
	stats.set_int("MPPLY_TOTAL_RACES_WON", 50)
end)

recMenu:add_action("Desbloquear Armas", function()
	stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED", -1)
	stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED2", -1)
	stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED3", -1)
	stats.set_int(mpx .. "CHAR_WEAP_UNLOCKED4", -1)
	stats.set_int(mpx .. "CHAR_WEAP_ADDON_1_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_WEAP_ADDON_2_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_WEAP_ADDON_3_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_WEAP_ADDON_4_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FREE", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FREE2", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_FREE", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_FREE2", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_FREE3", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_FREE4", -1)
	stats.set_int(mpx .. "CHAR_WEAP_PURCHASED", -1)
	stats.set_int(mpx .. "CHAR_WEAP_PURCHASED2", -1)
	stats.set_int(mpx .. "WEAPON_PICKUP_BITSET", -1)
	stats.set_int(mpx .. "WEAPON_PICKUP_BITSET2", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED", -1)
	stats.set_int(mpx .. "NO_WEAPONS_UNLOCK", -1)
	stats.set_int(mpx .. "NO_WEAPON_MODS_UNLOCK", -1)
	stats.set_int(mpx .. "NO_WEAPON_CLR_MOD_UNLOCK", -1) 
	stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED2", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED3", -1)
	stats.set_int(mpx .. "CHAR_FM_WEAP_UNLOCKED4", -1)
	stats.set_int(mpx .. "CHAR_KIT_1_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_2_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_3_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_4_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_5_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_6_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_7_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_8_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_9_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_10_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_11_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_12_FM_UNLCK", -1)
	stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE2", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE3", -1)
	stats.set_int(mpx .. "CHAR_WEAP_FM_PURCHASE4", -1)
	stats.set_int(mpx .. "FIREWORK_TYPE_1_WHITE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_1_RED", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_1_BLUE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_2_WHITE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_2_RED", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_2_BLUE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_3_WHITE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_3_RED", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_3_BLUE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_4_WHITE", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_4_RED", 1000)
	stats.set_int(mpx .. "FIREWORK_TYPE_4_BLUE", 1000)
	stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH", -1)
   for i = 2, 19 do stats.set_int(mpx .. "WEAP_FM_ADDON_PURCH"..i, -1) end
   for j = 1, 19 do stats.set_int(mpx .. "CHAR_FM_WEAP_ADDON_"..j.."_UNLCK", -1) end
   for m = 1, 41 do stats.set_int(mpx .. "CHAR_KIT_"..m.."_FM_UNLCK", -1) end
   for l = 2, 41 do stats.set_int(mpx .. "CHAR_KIT_FM_PURCHASE"..l, -1) end
end)

recMenu:add_action("Desbloquear Librerias Ocultas", function() stats.set_int("MPPLY_XMASLIVERIES", -1) for i = 1, 20 do stats.set_int("MPPLY_XMASLIVERIES"..i, -1) end end)

recMenu:add_action("Escuela De Viaje", function() stats.set_int("MPPLY_NUM_CAPTURES_CREATED", 100) for i = 0, 9 do stats.set_int("MPPLY_PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_int(mpx.. "PILOT_SCHOOL_MEDAL_"..i, -1) stats.set_bool(mpx .. "PILOT_ASPASSEDLESSON_"..i, true) end end)
recMenu:add_action("Campo De Tiro", function() stats.set_int(mpx .. "SR_HIGHSCORE_1", 690) stats.set_int(mpx .. "SR_HIGHSCORE_2", 1860) stats.set_int(mpx .. "SR_HIGHSCORE_3", 2690) stats.set_int(mpx .. "SR_HIGHSCORE_4", 2660) stats.set_int(mpx .. "SR_HIGHSCORE_5", 2650) stats.set_int(mpx .. "SR_HIGHSCORE_6", 450) stats.set_int(mpx .. "SR_TARGETS_HIT", 269) stats.set_int(mpx .. "SR_WEAPON_BIT_SET", -1) stats.set_bool(mpx .. "SR_TIER_1_REWARD", true) stats.set_bool(mpx .. "SR_TIER_3_REWARD", true) stats.set_bool(mpx .. "SR_INCREASE_THROW_CAP", true) end)
recMenu:add_action("Vanilla Unicorn", function() stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 0) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 5) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 10) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 15) stats.set_int(mpx .. "LAP_DANCED_BOUGHT", 25) stats.set_int(mpx .. "PROSTITUTES_FREQUENTED", 1000) end)
recMenu:add_action("Desbloquear Tatuajes", function() stats.set_int(mpx .. "TATTOO_FM_CURRENT_32", -1) for i = 0, 47 do stats.set_int(mpx .. "TATTOO_FM_UNLOCKS_"..i, -1) end end)

dinMenu = mainMenu:add_submenu("Dinero $$$ 'Test'")

local function Text(text)
	dinMenu:add_action(text, function() end)
end
dinMenu:add_action("No soy responsable del uso o algun", function() end)
dinMenu:add_action("baneo, es seguro hasta cierto punto", function() end)
dinMenu:add_action("Los quiero, picho <3", function() end)
dinMenu:add_action("-------------------------------------------", function() end)

cajMenu = dinMenu:add_submenu("Cajas CEO (Sin Testear)")

cajMenu:add_action("Finalizar Mision De Venta", function()
	sale_mission = script("gb_contraband_sell")
	if sale_mission:is_active()
		then
			base_address = 540
			sale_mission:set_int(base_address+1,99999)
		end
end)

cajMenu:add_action("Finalizar Mision De Compra/Robo", function()
	buy_mission = script("gb_contraband_buy")
	if buy_mission:is_active()
		then
			base_address = 598
			buy_mission:set_int(base_address+5, 1)
			buy_mission:set_int(base_address+191, 6)
			buy_mission:set_int(base_address+192, 4)
		end
end)

cajMenu:add_action("Sin tiempo de espera / Venta", function()
    globals.set_int(262145+15554, 0) 
end)

cajMenu:add_action("Poner Precio (5M)", function()
    sale_price = 4000000
	base_address = 15788
    globals.set_int(262145+base_address, sale_price//1)
    globals.set_int(262145+base_address+1, sale_price//2)
    globals.set_int(262145+base_address+2, sale_price//3)
    globals.set_int(262145+base_address+3, sale_price//5)
    globals.set_int(262145+base_address+4, sale_price//7)
    globals.set_int(262145+base_address+5, sale_price//9)
    globals.set_int(262145+base_address+6, sale_price//14)
    globals.set_int(262145+base_address+7, sale_price//19)
    globals.set_int(262145+base_address+8, sale_price//24)
    globals.set_int(262145+base_address+9, sale_price//29)
    globals.set_int(262145+base_address+10, sale_price//34)
    globals.set_int(262145+base_address+11, sale_price//39)
    globals.set_int(262145+base_address+12, sale_price//44)
    globals.set_int(262145+base_address+13, sale_price//49)
    globals.set_int(262145+base_address+14, sale_price//59)
    globals.set_int(262145+base_address+15, sale_price//69)
    globals.set_int(262145+base_address+16, sale_price//79)
    globals.set_int(262145+base_address+17, sale_price//89)
    globals.set_int(262145+base_address+18, sale_price//99)
    globals.set_int(262145+base_address+19, sale_price//110)
    globals.set_int(262145+base_address+20, sale_price//111)
end)

ediCaj = cajMenu:add_submenu("Editor de datos")

ediCaj:add_action("Perfil Editor", function() end)
ediCaj:add_int_range("Cambiar Ventas De Por Vida", 1, 0, 10000, function()
PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
    return 
        stats.get_int(mpx.."LIFETIME_SELL_COMPLETE") end,   function(value)
        stats.set_int(mpx.."LIFETIME_BUY_COMPLETE", value) 
        stats.set_int(mpx.."LIFETIME_BUY_UNDERTAKEN", value) 
        stats.set_int(mpx.."LIFETIME_SELL_COMPLETE", value) 
        stats.set_int(mpx.."LIFETIME_SELL_UNDERTAKEN", value)

end)

ediCaj:add_int_range("Ganancias De Por Vida", 200000.0, 0, 10000000, function()
PlayerIndex = globals.get_int(1574918)
	if PlayerIndex == 0 then
		mpx = "MP0_"
	else
		mpx = "MP1_"
	end
                                       return 
   stats.get_int(mpx.."LIFETIME_CONTRA_EARNINGS") end,           
	   function(value) 
stats.set_int(mpx.."LIFETIME_CONTRA_EARNINGS", value * 1)
end)

ediCaj:add_action(
    "Re-Establecer Ventas-Ganancias a 0",
    function()
        stats.set_int(mpx .. "LIFETIME_BUY_COMPLETE",  0)
        stats.set_int(mpx .. "LIFETIME_BUY_UNDERTAKEN", 0)
        stats.set_int(mpx .. "LIFETIME_SELL_COMPLETE",  0)
        stats.set_int(mpx .. "LIFETIME_SELL_UNDERTAKEN",  0)
        stats.set_int(mpx .. "LIFETIME_CONTRA_EARNINGS",  0)
        globals.set_int(1575017, 1)         ----PlayerSessionBlank--------
        globals.set_int(1574589, 1)         ----PlayerSessionNew----------
        sleep(0.2)
        globals.set_int(1574589, 0)         ----PlayerSessionNew------
    end
)

ccMenu = dinMenu:add_submenu("Club Nocturno")


local isRunning = false
ccMenu:add_toggle("Loop De Caja Fuerte $250k/10s (AFK)", function() return isRunning end, function() isRunning = not isRunning safeLoop(isRunning) end)

acidMenu = dinMenu:add_submenu("Laboratorio De Acido 'Sin Testear'")

acidMenu:add_int_range("Aumentar Produccion", 1.0, 1, 10, function()
	return globals.get_int(262145 + 32700)
end, function(value)
	globals.set_int(262145 + 32700, 0)
end)

acidMenu:add_int_range("Disminuir Estado de produccion", 1.0, 0, 100, function() 
	return globals.get_int(262145 + 17396)
end, function(value)
	globals.set_int(262145 + 17396, value)
end)

acidMenu:add_int_range("Poner el valor de acido < 2M ", 10000.0, 10000, 99999, function()
	return globals.get_int(262145 + 17425)
	end, function(value)
	globals.set_int(262145 + 17425, value)
end)

acidMenu:add_int_range("Costo de suministros", 1, 0, 10, function() 
	return globals.get_int(262145+21869)
end, function(value)
	globals.set_int(262145+21869, value)
end)

mmHmenu = dinMenu:add_submenu("Cargo De Hangar (Sin Testear)")
function Cooldown(e) if not localplayer then return end if e then for i = 284924, 284928 do globals.set_int(i, 0) globals.set_int(i, 1) end else globals.set_int(284924, 120000) globals.set_int(284925, 180000) globals.set_int(284926, 240000) globals.set_int(284927, 60000) globals.set_int(284928, 2000) end end mmHmenu:add_toggle("Remove Cooldowns", function() return e15 end, function() e15 = not e15 Cooldown(e15) end)
mmHmenu:add_int_range("Cargamento Mixto", 50000, 10000, 3100000, function() return globals.get_int(284956) end, function(value) globals.set_int(284956, value) end)
mmHmenu:add_int_range("Cargamento Animal", 50000, 10000, 3100000, function() return globals.get_int(284957) end, function(value) globals.set_int(284957, value) end)
mmHmenu:add_int_range("Antiguedades y Arte", 50000, 10000, 3100000, function() return globals.get_int(284958) end, function(value) globals.set_int(284958, value) end)
mmHmenu:add_int_range("Cargamento Quimico", 50000, 10000, 3100000, function() return globals.get_int(284959) end, function(value) globals.set_int(284959, value) end)
mmHmenu:add_int_range("Dinero Falsificado", 50000, 10000, 3100000, function() return globals.get_int(284960) end, function(value) globals.set_int(284960, value) end)
mmHmenu:add_int_range("Joyeria", 50000, 10000, 3100000, function() return globals.get_int(284961) end, function(value) globals.set_int(284961, value) end)
mmHmenu:add_int_range("Cargamentos Medicos", 50000, 10000, 3100000, function() return globals.get_int(284962) end, function(value) globals.set_int(284962, value) end)
mmHmenu:add_int_range("Cargamentos De Narcotico", 50000, 10000, 3100000, function() return globals.get_int(284963) end, function(value) globals.set_int(284963, value) end)
mmHmenu:add_int_range("Tabacco Value", 50000, 10000, 3100000, function() return globals.get_int(284964) end, function(value) globals.set_int(284964, value) end)
function ronC(e) if not localplayer then return end if e then globals.set_float(284966, 0) else globals.set_float(284966, 0.025) end end 
mmHmenu:add_toggle("Remove Rons's cut", function() return e30 end, function() e30 = not e30 ronC(e30) end)
mmHmenu:add_int_range("Resetear Stats De Ventas", 1, 0, 500, function() return stats.get_int(mpx .. "LFETIME_HANGAR_SEL_COMPLET") end, function(value) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_UNDETAK", value) stats.set_int(mpx .. "LFETIME_HANGAR_BUY_COMPLET", value) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_UNDETAK", value) stats.set_int(mpx .. "LFETIME_HANGAR_SEL_COMPLET", value) stats.set_int(mpx .. "LFETIME_HANGAR_EARNINGS", value * 40000) globals.set_int(1575015, 1) globals.set_int(1574589, 1) sleep(0.2) globals.set_int(1574589, 0) end)

mmVmenu = dinMenu:add_submenu("Cargamento Veh (Sin Testear)") local function Max(e) if not localplayer then return end if e then globals.set_int(281602, 155000) globals.set_int(281603, 155000) globals.set_int(281604, 155000) globals.set_float(281606, 0) globals.set_float(281607, 0) else globals.set_int(281602, 40000) globals.set_int(281603, 25000) globals.set_int(281604, 15000) globals.set_float(281606, 0.25) globals.set_float(281607, 0.5) end end mmVmenu:add_toggle("Maxear los rangos", function() return e17 end, function() e17 = not e17 Max(e17) end)
mmVmenu:add_int_range("Auto god", 1000, 40000, 4000000, function() return globals.get_int(293281) end, function(value) globals.set_int(293281, value) end)
mmVmenu:add_int_range("Auto meh", 1000, 25000, 4000000, function() return globals.get_int(293282) end, function(value) globals.set_int(293282, value) end)
mmVmenu:add_int_range("Auto mierda", 1000, 15000, 4000000, function() return globals.get_int(293283) end, function(value) globals.set_int(293283, value) end)
mmVmenu:add_float_range("Venta en el Showroom", 0.5, 1.5, 1000, function() return globals.get_float(281563) end, function(value) globals.set_float(281563, value) end)
mmVmenu:add_float_range("Venta a especialista", 0.5, 2, 1000, function() return globals.get_float(281564) end, function(value) globals.set_float(281564, value) end)
mmVmenu:add_float_range("Mejorar costo en Showroom", 0.25, 0, 1000, function() return globals.get_float(281561) end, function(value) globals.set_float(281561, value) end)
mmVmenu:add_float_range("Mejorar costo en especialista", 0.25, 0, 1000, function() return globals.get_float(281562) end, function(value) globals.set_float(281562, value) end)
mmVmenu:add_action("-----Testeado:solo public; ~Max=310k------------", function() end)

mcMenu = dinMenu:add_submenu("Club De Moteros (Sin Testear)") local function Speed(e) if not localplayer then return end if e then for i = 279591, 279595 do globals.set_int(i, 0) globals.set_int(i, 1) end else globals.set_int(279594, 300000) globals.set_int(279595, 720000) globals.set_int(279593, 3000000) globals.set_int(279592, 1800000) globals.set_int(279591, 360000) end end 
local function Speed(e) if not localplayer then return end if e then for i = 279536, 279540 do globals.set_int(i, 0) globals.set_int(i, 1) end else globals.set_int(279539, 300000) globals.set_int(279540, 720000) globals.set_int(279538, 3000000) globals.set_int(279537, 1800000) globals.set_int(279536, 360000) end end 
local function MCgs(e) if not localplayer then return end if e then globals.set_int(280392, 0) else globals.set_int(280392, 40000) end end 
local function VCD(e) if not localplayer then return end if e then for i = 281622, 281625 do globals.set_int(i, 0) sleep(1) globals.set_int(i, 1) end else globals.set_int(281622, 1200000) globals.set_int(281623, 1680000) globals.set_int(281624, 2340000) globals.set_int(281625, 2880000) end end 
local function VRC(e) if not localplayer then return end if e then globals.set_int(281098, 1000) else globals.set_int(281098, 1000) end end 
local function VRD(e) if not localplayer then return end if e then globals.set_int(281099, 10) else globals.set_int(281099, 600) end end 
local function MCrr(e) if not localplayer then return end if e then for i = 0, 4 do stats.set_int(mpx.."PAYRESUPPLYTIMER"..i, 1) sleep(0.1) end else for i = 0, 4 do stats.set_int(mpx.."PAYRESUPPLYTIMER"..i, 0) end end end 

mcMenu:add_toggle("Aumentar Produccion", function() return e16 end, function() e16 = not e16 Speed(e16) end)
mcMenu:add_toggle("Remover Cooldown", function() return e18 end, function() e18 = not e18 VCD(e18) end)
mcMenu:add_action("---", function() end)
mcMenu:add_toggle("Remover costo de suministros", function() return e22 end, function() e22 = not e22 VRC(e22) end)
mcMenu:add_toggle("Rellenar Suministros(beta)", function() return e25 end, function() e25 = not e25 MCrr(e25) end)
mcMenu:add_toggle("Remover señal global", function() return e24 end, function() e24 = not e24 MCgs(e24) end)
mcMenu:add_float_range("Multiplicador de venta", 0.5, 1, 1000, function() return globals.get_float(281256) end, function(value) globals.set_float(281256, value) globals.set_float(281257, value) end) 
mcMenu:add_action(" ~Utilizar para obtener~ ", function() end)
mcMenu:add_action(" ~Max 2.5M~ ", function() end)

MMmenu = dinMenu:add_submenu("Money Loop 'SUPER RISKY'") local g = globals.set_int local m = 1968313 local x = 1 local y = 2 local z = 3 local k = 0 local s = sleep local p = 30 local q = 60 local r = 120 local enable1 = false local enable2 = false local enable3 = false local enable4 = false local enable5 = false local function Loop1(e) if not localplayer then return end if e then g(m, x) s(z) g(m, k) s(p) end end 

MMmenu:add_toggle("$ 500k/ 30s", function() return enable1 end, function() enable1 = not enable1 while enable1 == true do Loop1(enable1) end end) local function Loop2(e) if not localplayer then return end if e then g(m, y) s(z) g(m, k) s(p) end end 
MMmenu:add_toggle("$ 750k/ 30s", function() return enable2 end, function() enable2 = not enable2 while enable2 == true do Loop2(enable2) end end) local function Loop3(e) if not localplayer then return end if e then g(m, x) s(z) g(m, k) s(z) g(m, x) s(z) g(m, k) s(q) end end
MMmenu:add_toggle("$ 1M/ 60s", function() return enable3 end, function() enable3 = not enable3 while enable3 == true do Loop3(enable3) end end) local function Loop4(e) if not localplayer then return end if e then g(m, y) s(z) g(m, k) s(z) g(m, y) s(z) g(m, k) s(q) end end 
MMmenu:add_toggle("$ 1.5M/ 60s", function() return enable4 end, function() enable4 = not enable4 while enable4 == true do Loop4(enable4) end end) local function Loop5(e) if not localplayer then return end if e then g(m, y) s(z) g(m, k) s(z) g(m, y) s(z) g(m, k) s(z) g(m, y) s(z) g(m, k) s(z) g(m, y) s(z) g(m, k) s(r) end end    
MMmenu:add_toggle("$ 3M/ 120s", function() return enable5 end, function() enable5 = not enable5 while enable5 == true do Loop5(enable5) end end)

MMmenu:add_action("---------------> IMPORTANTE <-----------------", function() end)

MMmenu:add_action("Elija solo 1 opcion a la vez. Para detener", function() end)
MMmenu:add_action("Salga desde la configuración. Si quiere", function() end)
MMmenu:add_action("cambiar la opcion,salga primero Y espere", function() end) 
MMmenu:add_action("2 minutos antes de seleccionar una nueva.", function() end) 

CREDMenu = mainMenu:add_submenu("Creditos") 
CREDMenu:add_action("Kiddions ", function() end) 
CREDMenu:add_action("Pichocles#0427", function() end) 
CREDMenu:add_action("En Especial ", function() end) 
CREDMenu:add_action("Emir <3 ", function() end)
