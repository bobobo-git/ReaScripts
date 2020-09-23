--====================================================================== 
--[[ 
* ReaScript Name: Nabla Looper Arranged Settings
* Version: 0.1.3
* Author: Esteban Morales
* Author URI: http://forum.cockos.com/member.php?u=105939
--]] 
--======================================================================
local info   = debug.getinfo(1,'S');
script_path  = info.source:match[[^@?(.*[\/])[^\/]-$]]

if reaper.GetOS() == "Win32" or reaper.GetOS() == "Win64" then
	scriptPath = reaper.GetResourcePath().."\\Scripts\\Nabla Tools\\Scythe for Nabla\\library\\"
else
	scriptPath = reaper.GetResourcePath().."/Scripts/Nabla Tools/Scythe for Nabla/library/"
end

local libPathNabla = reaper.GetExtState("Scythe v3 for Nabla", "libPathNabla")

if not libPathNabla or libPathNabla == "" then

  reaper.SetExtState("Scythe v3 for Nabla", "libPathNabla", scriptPath, true)

  libPathNabla = scriptPath

end

dofile(script_path .. "Nabla Looper Arranged Settings"..".dat")


