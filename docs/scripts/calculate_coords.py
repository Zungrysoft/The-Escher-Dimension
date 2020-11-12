#Whether to automatically calculate door positions
autocalc = 1

#Room sizes
w = 13
h = 6
l = 9

#Door positions
north = [0, 0, 0]
south = [0, 0, 0]
east = [0, 0, 0]
west = [0, 0, 0]

#Mode
#0: Underground dungeon
#1: Outdoor dungeon
#2: No reserve space
mode = 1

if autocalc:
	south[0] = int((w-1)/2)
	south[1] = 1
	south[2] = l-1
	north[0] = int((w-1)/2)
	north[1] = 1
	north[2] = 0
	west[0] = 0
	west[1] = 1
	west[2] = int((l-1)/2)
	east[0] = w-1
	east[1] = 1
	east[2] = int((l-1)/2)


#Results
x = south[0]
y = south[1]
z = south[2]
north_dom = [-x, -y, -z-1]
north_opp = [-x+w-1, -y+h-1, -z+l-2]

x = north[0]
y = north[1]
z = north[2]
south_dom = [-x, -y, 1-z]
south_opp = [-x+w-1, -y+h-1, -z+l]

x = west[0]
y = west[1]
z = west[2]
east_dom = [1-x, -y, -z]
east_opp = [-x+w, -y+h-1, -z+l-1]

x = east[0]
y = east[1]
z = east[2]
west_dom = [-x-1, -y, -z]
west_opp = [-x+w-2, -y+h-1, -z+l-1]
    
print ("North:")
print ("Position: ~" + str(north_dom[0]) + " ~" + str(north_dom[1]) + " ~" + str(north_dom[2]))
print("")

print ("South:")
print ("Position: ~" + str(south_dom[0]) + " ~" + str(south_dom[1]) + " ~" + str(south_dom[2]))
print("")

print ("East:")
print ("Position: ~" + str(east_dom[0]) + " ~" + str(east_dom[1]) + " ~" + str(east_dom[2]))
print("")

print ("West:")
print ("Position: ~" + str(west_dom[0]) + " ~" + str(west_dom[1]) + " ~" + str(west_dom[2]))
print("")

if mode == 0:
    print ("Bounding Box: ~ ~128 ~ ~" + str(w-1) + " ~" + str((h-1)+128) + " ~" + str(l-1))
if mode == 1:
    print ("Bounding Box: ~ ~-128 ~ ~" + str(w-1) + " ~" + str((h-1)-128) + " ~" + str(l-1))
if mode == 2:
    print ("Bounding Box: ~ ~ ~ ~" + str(w-1) + " ~" + str(h-1) + " ~" + str(l-1))








