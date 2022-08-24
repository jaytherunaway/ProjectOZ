::home::
local I = 1
while(I <= 2) do 
os.execute("clear")
print("********************************************************************************")
print("*                                                                              *")
print("*         ****  ****   ****      * *****  ****  *******    ****  *****         *") 
print("*         *   * *   * *    *     * *     *    *    *      *    *    *          *")
print("*         ****  ****  *    *     * ***** *         *      *    *   *           *")
print("*         *     * *   *    * *   * *     *    *    *      *    *  *            *")
print("*         *     *  *   ****   ***  *****  ****     *       ****  *****         *")
print("*                                                                              *")
print("********************************************************************************")
print("  *****************  **************************************    ***********      ")
print("  * -2022/08/24-  *  * Please Select One Of The Fallowing *    * V:0.1.8 *      ")
print("  *****************  **************************************    ***********      ")
print("********************************************************************************")
print("*  1.RC Controller                         11.                                 *")
print("*  2.Robot RC Installer                    12.                                 *")
print("*  3.Robot Farmer Installer                13.                                 *")
print("*  4.Robot Tree Farmer Installer           14.Patch Notes Last Update          *")
print("*  5.Robot AutoMiner Installer             15.Command Prompt                   *")
print("*  6.Robot live logs                       16.Reboot PC                        *")
print("*  7.Drone Controller                      17.Shutdown PC                      *")
print("*  8.                                      18.Update PROJECT OZ                *")
print("*  9.                                      19.Delete PROJECT OZ                *")
print("* 10.                                      20.Close PROJECT OZ                 *")
print("********************************************************************************")
local slot = io.read()

-- slot 1 --
if slot == "1" then
--SETTINGS--
local channel = 123 --broadcast channel change in both files default 123--
--DO NOT CHANGE UNDER THIS LINE--
--VARABLES--
local component = require("component")
local event = require("event")
local m = component.modem -- get primary modem component
local loop = 1
--CODE--
os.execute("clear")
while(loop <= 2) do
print("--------------------------------------------------------------------------------")
print("-------------------------------RC Robot Controller------------------------------")
print("--------------------------------------------------------------------------------")
print("f = Move Forward")
print("b = Move Back")
print("l = Turn Left")
print("t = Turn Around")
print("r = Turn Right")
print("u = Move Up")
print("d = Move Down")
print("p = Place Block")
print("m = Mine Block")
print("c = Will Exit To PROJECT OZ")
print("--------------------------------------------------------------------------------")
print("-----------------------Please Select One Of The Fallowing-----------------------")
print("--------------------------------------------------------------------------------")
local message = io.read()
m.broadcast(channel, message)
print ("message sent on channel =",channel)
m.open(channel)
if message == "" then
goto home
else
print("Message Sending")
print(message)
os.sleep(1.5)
os.execute("clear")
end
end
goto home


-- slot 2 --
elseif slot == "2" then
os.execute("clear")
print("***********")
print("* WARNING *")
print("***********")
print("")
print("THIS WILL DELETE PROJECT OZ")
print("")
print("Install Y/N")
local reply = io.read()
if reply == "y" then
os.execute("clear")
--THIS LINE IS FOR GIT HUB GET LINE--
--print("Installing RC Bot Files...")
print("Please Wait...")
os.sleep(2)
os.execute("clear")
--print("Install Complete")
print("NO FILE TO INSTALL")
print("")
print("Please Put This In Your Robot Then Type")
print("")
print("RC Start")
print("")
print("At open Open.OS #home")
print("")
print("Press Any Key To Shutdown")
io.read()
os.execute("del PROZ.lua")
os.sleep(1.5)
os.execute("shutdown")
else
goto home
end


-- slot 3 --
elseif slot == "3" then
os.execute("clear")
print("***********")
print("* WARNING *")
print("***********")
print("")
print("THIS WILL DELETE PROJECT OZ")
print("")
print("Install Y/N")
local reply = io.read()
if reply == "y" then
os.execute("clear")
--THIS LINE IS FOR GIT HUB GET LINE--
--print("Installing Farmer Bot Files...")
print("Please Wait...")
os.sleep(2)
os.execute("clear")
--print("Install Complete")
print("NO FILE TO INSTALL")
print("")
print("Please Put This In Your Robot Then Type")
print("")
print("RC Start")
print("")
print("At open Open.OS #home")
print("")
print("Press Any Key To Shutdown")
io.read()
os.execute("del PROZ.lua")
os.sleep(1.5)
os.execute("shutdown")
else
goto home
end


-- slot 4 --
elseif slot == "4" then
os.execute("clear")
print("***********")
print("* WARNING *")
print("***********")
print("")
print("THIS WILL DELETE PROJECT OZ")
print("")
print("Install Y/N")
local reply = io.read()
if reply == "y" then
os.execute("clear")
--THIS LINE IS FOR GIT HUB GET LINE--
--print("Installing Tree Farmer Bot Files...")
print("Please Wait...")
os.sleep(2)
os.execute("clear")
--print("Install Complete")
print("NO FILE TO INSTALL")
print("")
print("Please Put This In Your Robot Then Type")
print("")
print("RC Start")
print("")
print("At open Open.OS #home")
print("")
print("Press Any Key To Shutdown")
io.read()
os.execute("del PROZ.lua")
os.sleep(1.5)
os.execute("shutdown")
else
goto home
end


-- slot 5 --
elseif slot == "5" then
os.execute("clear")
print("***********")
print("* WARNING *")
print("***********")
print("")
print("THIS WILL DELETE PROJECT OZ")
print("")
print("Install Y/N")
local reply = io.read()
if reply == "y" then
os.execute("clear")
os.execute("wget https://github.com/jaytherunaway/Opencomputers-programes/raw/main/miner.lua")
print("Installing Autominer Bot Files...")
print("Please Wait...")
os.sleep(2)
os.execute("clear")
print("Install Complete")
print("")
print("Please Put This In Your Robot Then Type")
print("")
print("miner.lua")
print("")
print("At open Open.OS #home")
print("")
print("Press Any Key To Shutdown")
io.read()
os.execute("del PROZ.lua")
os.sleep(1.5)
os.execute("shutdown")
else
goto home
end


-- slot 6 -- 
elseif slot == "6" then
local component = require("component")
local event = require("event")
local m = component.modem -- get primary modem component
local I = 0
os.execute("clear")
print("-----------------")
print("BOT Tracker")
print("-----------------")
 while(I <= 10) do 
I = I + 1
m.open(123)
local event = require("event")
local _, _, _, _, _, message= event.pull("modem_message")
print(message)
m.close(123)
end
goto home


-- slot 7 --
elseif slot == "7" then
local component = require("component")
local event = require("event")
local modem = component.modem
while true do
os.execute("clear")
print("------------------------")
print("Drone controller 0.1")
print("------------------------")
print("")
print("")
print("Type A Command")
print("Press Enter")
print("------------------------")
print("Commands")
print("------------------------")
print("d.move(0,0,0)")
print("d.fill(down)")
print("d.drain(down)")
print("close")
print("------------------------")
print("")
modem.open(2412)
modem.broadcast(2412, "d=component.proxy(component.list('drone')())")
  local cmd=io.read()
  if cmd == "close" then
  goto home
  else
  if not cmd then return end
  modem.broadcast(2412, cmd)
  print(select(6, event.pull(5, "modem_message")))
end
end


-- slot 8 --
elseif slot == "8" then


-- slot 9 --
elseif slot == "9" then


-- slot 10 --
elseif slot == "10" then


-- slot 11 --
elseif slot == "11" then


-- slot 12 --
elseif slot == "12" then


-- slot 13 --
elseif slot == "13" then


-- slot 14 --
elseif slot == "14" then
  os.execute("clear")
os.execute("UpdateLogs.PROZ")
io.read()
goto home


-- slot 15 --
elseif slot == "15" then


-- slot 16 --
elseif slot == "16" then
os.execute("reboot")

-- slot 17 --
elseif slot == "17" then
os.execute("shutdown")

-- slot 18 --
elseif slot == "18" then
os.execute("wget -f https://github.com/jaytherunaway/ProjectOZ/raw/main/UpdateLogs.PROZ")
os.execute("wget -f https://github.com/jaytherunaway/ProjectOZ/raw/main/Update.lua")
os.execute("Update.lua")
goto close

-- slot 19 --
elseif slot == "19" then
os.execute("del PROZ.lua")
goto close



-- slot 20 --
elseif slot == "20" then
goto close
elseif slot == "close" then
goto close
elseif slot == "c" then
goto close

--Invalid Input--
else
print("*********************************Invalid Input**********************************")
os.sleep(1)
end
end
::close::
os.execute("clear")
