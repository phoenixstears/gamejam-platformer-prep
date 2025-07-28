# gamejam-platformer-prep
MUSTS:
assets:
	- each entity in the game should have an asset for it - no assets should be missing
music:
	- there should be a separate OST for:
		- The first and the second level
		- the level select screen
		- the main menu
game:
	menu:
		- there should be a main menu, featuring:
			- the buttons for a new game and continuing the current one
			- the leaderboard, featuring the top scores achieved in the game
			- the settings screen, in which you can change the audio volume, resolution and viewing mode
			- the credits page
			- the option to exit the game
	level select:
		- there should be a level select scene, featuring the option to switch between levels
	gameplay:
		- the protagonist should be able to move left, right and jump
		- the camera should follow the protagonist horizontally
		- the protagonist should collide with obstacles properly
		- the protagonist should have the ability to slay enemies and collect coins
			- each enemy slain and coin picked up should raise the score
		- the protagonist should lose a life when colliding with an enemy or falling off the map
		- the protagonist should be able to pick up a power-up that prevents them from dying via collision with an enemy on the first hit
		- the game should have 2 levels, each of which featuring:
			- a horizontal map that is traversable and completable by the player
			- a clearly marked ending point, after which the player completes the level
			- platforms on multiple (more than 1) vertical levels
			- moving platforms
			- more than 2 types of enemies
			- collectable coins
		- after a level is completed, the game should transition to the level select screen. 
		- after losing all lives, the level should be deemed as failed and the game should transition to the main menu
		- after completing two levels or dying, the game should check if the score of the player belongs on the high-score leaderboard
			- if it does, the game should transition to the leaderboard tab and ask the player for their name to be put on the leaderboard
		
	
