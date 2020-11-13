#A simple python implementation of the Diamond-Square terrain generator algorithm
#I wrote it to gain a proper understanding of the algorithm before I attempted the herculean task of implementing it mcfunction
#Written by ZungryWare

import random
import sys

myfile = open("terrain_generate.mcfunction","w")

#Prints the 
def fprint(s):
	print(s, file=myfile)

#Visualizes a space on the table with an ascii character
def printitem(v):
	t = [0,1,2,3,4,5,6,7,8]
	c = [' ','.',':','=','i','a','4','G','#']
	print(" ",end="")
	
	i = 0
	while 1:
		if i > 8:
			print("#",end="")
			return	
		if v < t[i]:
			print(c[i],end="")
			return
		i += 1

#Prints out the grid in ascii characters
def printgrid(grid):
	for x in grid:
		for y in x:
			printitem(y)
		print("");

#Randomly returns a value -rng/2 < v < rng/2
def deviate(rng):
	return (random.random() * rng) - (rng/2)

#Diamond phase of the algorithm
def diamond(grid,gridsize,fs):
	fs = int(fs)
	hs = int(fs/2)
	
	x = hs
	y = hs
	while x < gridsize:
		while y < gridsize:
			fprint("execute store result score sum value run data get block " + str(2000+x+hs) + " 50 " + str(2000+y+hs) + " CookTimeTotal")
			fprint("execute store result score temp value run data get block " + str(2000+x+hs) + " 50 " + str(2000+y-hs) + " CookTimeTotal")
			fprint("scoreboard players operation sum value += temp value")
			fprint("execute store result score temp value run data get block " + str(2000+x-hs) + " 50 " + str(2000+y+hs) + " CookTimeTotal")
			fprint("scoreboard players operation sum value += temp value")
			fprint("execute store result score temp value run data get block " + str(2000+x-hs) + " 50 " + str(2000+y-hs) + " CookTimeTotal")
			fprint("scoreboard players operation sum value += temp value")
			
			fprint("execute positioned " + str(2000+x) + " 50 " + str(2000+y) + " run function tid:dungeon/nature/biome/rng")
			
			fprint("execute store result block " + str(2000+x) + " 50 " + str(2000+y) + " CookTimeTotal short 1 run scoreboard players operation sum value /= calc4 value")
			
			
			
			y += fs
		x += fs
		y = hs

#Square phase of the algorithm
def square(grid,gridsize,fs):
	fs = int(fs)
	hs = int(fs/2)
	
	x = 0
	y = hs
	while x < gridsize:
		while y < gridsize:
			items = 0.0
			fprint("scoreboard players set sum value 0")
			if x > 0:
				fprint("execute store result score temp value run data get block " + str(2000+x-hs) + " 50 " + str(2000+y) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if y > 0:
				fprint("execute store result score temp value run data get block " + str(2000+x) + " 50 " + str(2000+y-hs) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if x < gridsize-1:
				fprint("execute store result score temp value run data get block " + str(2000+x+hs) + " 50 " + str(2000+y) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if y < gridsize-1:
				fprint("execute store result score temp value run data get block " + str(2000+x) + " 50 " + str(2000+y+hs) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			
			fprint("execute positioned " + str(2000+x) + " 50 " + str(2000+y) + " run function tid:dungeon/nature/biome/rng")
			
			if items == 4:
				fprint("execute store result block " + str(2000+x) + " 50 " + str(2000+y) + " CookTimeTotal short 1 run scoreboard players operation sum value /= calc4 value")
			else:
				fprint("execute store result block " + str(2000+x) + " 50 " + str(2000+y) + " CookTimeTotal short 1 run scoreboard players operation sum value /= calc3 value")
			
			y += fs
		x += fs
		y = hs
	
	x = hs
	y = 0
	while x < gridsize:
		while y < gridsize:
			items = 0.0
			fprint("scoreboard players set sum value 0")
			if x > 0:
				fprint("execute store result score temp value run data get block " + str(2000+x-hs) + " 50 " + str(2000+y) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if y > 0:
				fprint("execute store result score temp value run data get block " + str(2000+x) + " 50 " + str(2000+y-hs) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if x < gridsize-1:
				fprint("execute store result score temp value run data get block " + str(2000+x+hs) + " 50 " + str(2000+y) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			if y < gridsize-1:
				fprint("execute store result score temp value run data get block " + str(2000+x) + " 50 " + str(2000+y+hs) + " CookTimeTotal")
				fprint("scoreboard players operation sum value += temp value")
				items += 1
			
			fprint("execute positioned " + str(2000+x) + " 50 " + str(2000+y) + " run function tid:dungeon/nature/biome/rng")
			
			if items == 4:
				fprint("execute store result block " + str(2000+x) + " 50 " + str(2000+y) + " CookTimeTotal short 1 run scoreboard players operation sum value /= calc4 value")
			else:
				fprint("execute store result block " + str(2000+x) + " 50 " + str(2000+y) + " CookTimeTotal short 1 run scoreboard players operation sum value /= calc3 value")
			
			y += fs
		x += fs
		y = 0

def main():
	gridsize = 65
	
	#Create grid
	grid = []
	for i in range(gridsize):
		column = []
		for i in range(gridsize):
			column.append(-1)
		grid.append(column)
	
	#Initialize Corners
	grid[0][0] = 4
	grid[gridsize-1][0] = 4
	grid[0][gridsize-1] = 4
	grid[gridsize-1][gridsize-1] = 4
	
	#Set calc3 and calc4
	fprint("scoreboard players set calc2 value 2")
	fprint("scoreboard players set calc3 value 3")
	fprint("scoreboard players set calc4 value 4")
	
	#Run the algorithm
	fs = gridsize-1
	while fs >= 2:
		fprint("function tid:dungeon/nature/biome/step")
		diamond(grid,gridsize,fs)
		square(grid,gridsize,fs)
		fs = int(fs/2)
	
	print("Output written to terrain_generate.mcfunction")
	
	
main()





