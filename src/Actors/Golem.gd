extends Actor
 
export (int) var maxHP: int = 25
export (int) var maxATK: int = 5
export (int) var maxDEF: int = 5

# Make sure to update the generatePreconstructed func with any keywords you add to the array
var keyWords: Array = ["red", "blue", "green", "orange", ""]

# Constructor (but not actually, because the real _init() is complicated)
func init(golemName: String):
	var keyWordUsed: int = keyWords.find(golemName)
	if keyWordUsed == -1: #-1 means the word was not found in the array
		var rng = RandomNumberGenerator.new() #create a random number generator
		rng.seed = hash(golemName) #set the seed of the rng to the golem name provided by the user.
		print("Constructing...")
		setStats((rng.randi() % maxHP + 1),(rng.randi() % maxATK + 1), (rng.randi() % maxDEF + 1))
		#randi() % 50 returns a number between 0 and 49
		#Thus, randi() % max + 1 returns a number between 1 and the set max.
	else:
		generatePreconstructed(keyWordUsed)
	print("HP: %d \nATK: %d \nDEF: %d" % [PlayerData.totalHP, PlayerData.ATK, PlayerData.DEF])

func generatePreconstructed(keyWordUsed: int):
	match keyWordUsed:
		0:#red
			setStats(5, maxATK, 1)
		1:#blue
			setStats(5, 1, maxDEF)
		2:#green
			setStats(maxHP, 3, 3)
		3:#orange
			setStats(maxHP/2, maxATK/2, maxDEF/2)
		4:#empty
			setStats(1, 0, 0)

func setStats(HP: int, ATK: int, DEF: int) -> void:
	PlayerData.totalHP = HP
	PlayerData.ATK = ATK
	PlayerData.DEF = DEF

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
