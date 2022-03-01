extends Actor
 
export (int) var maxHP = 25
export (int) var maxATK = 5
export (int) var maxDEF = 5

# Constructor (but not actually, because the real _init() is complicated)
func init(golemName):
	var rng = RandomNumberGenerator.new() #create a random number generator
	rng.seed = hash(golemName) #set the seed of the rng to the golem name provided by the user.
	print("Constructing...")
	totalHP = rng.randi() % maxHP + 1 #randi() % 50 returns a number between 0 and 49
	attack = rng.randi() % maxATK + 1 #Thus, randi() % max + 1 returns a number between 1 and the set max.
	defence = rng.randi() % maxDEF + 1
	print("HP: %d \nATK: %d \nDEF: %d" % [totalHP, attack, defence])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
