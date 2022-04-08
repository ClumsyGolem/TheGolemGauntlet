extends Control

signal generate_golem #creates a custom signal

#From my understanding onready is important for vars that need to be initialized based on the current scene tree.
#ie. I don't need onready for golemName as it is initialized regardless of the scene tree. However, confirmationPopup
#is being initialized with a call to get_node() ($) and thus relies on the state of the scenetree and needs to be ready.
onready var confirmationPopup: ConfirmationDialog = $ConfirmationDialog

var golemName : String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func generateGolem(pGolemName: String) -> void:
	emit_signal("generate_golem", pGolemName)

func translateToRunestones(new_text: String) -> Array:
	var translation: Array = []
	for ch in new_text:
		match ch:
			'a':
				translation.push_back(0)
			'b':
				translation.push_back(1)
			'c':
				translation.push_back(2)
			'd':
				translation.push_back(3)
			'e':
				translation.push_back(4)
			'f':
				translation.push_back(5)
			'g':
				translation.push_back(6)
			'h':
				translation.push_back(7)
			'i':
				translation.push_back(8)
			'j':
				translation.push_back(9)
			'k':
				translation.push_back(10)
			'l':
				translation.push_back(11)
			'm':
				translation.push_back(12)
			'n':
				translation.push_back(13)
			'o':
				translation.push_back(14)
			'p':
				translation.push_back(15)
			'q':
				translation.push_back(16)
			'r':
				translation.push_back(17)
			's':
				translation.push_back(18)
			't':
				translation.push_back(19)
			'u':
				translation.push_back(20)
			'v':
				translation.push_back(21)
			'w':
				translation.push_back(22)
			'x':
				translation.push_back(23)
			'y':
				translation.push_back(24)
			'z':
				translation.push_back(25)
			'1':
				translation.push_back(26)
			'2':
				translation.push_back(27)
			'3':
				translation.push_back(28)
			'4':
				translation.push_back(29)
			'5':
				translation.push_back(30)
			'6':
				translation.push_back(31)
			'7':
				translation.push_back(32)
			'8':
				translation.push_back(33)
			'9':
				translation.push_back(34)
			'0':
				translation.push_back(35)
			_: translation.push_back(36)
	return translation

func displayRunestones(new_text: String) -> void:
	var translation: Array = translateToRunestones(new_text)
	match translation.size():
		1:
			$Runestone1.frame = translation[0]
			$Runestone1.visible = true
			$Runestone2.visible = false
			$Runestone3.visible = false
			$Runestone4.visible = false
			$Runestone5.visible = false
			$Runestone6.visible = false
			$Runestone7.visible = false
			$Runestone8.visible = false
		2:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = false
			$Runestone4.visible = false
			$Runestone5.visible = false
			$Runestone6.visible = false
			$Runestone7.visible = false
			$Runestone8.visible = false
		3:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = true
			$Runestone4.visible = false
			$Runestone5.visible = false
			$Runestone6.visible = false
			$Runestone7.visible = false
			$Runestone8.visible = false
		4:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone4.frame = translation[3]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = true
			$Runestone4.visible = true
			$Runestone5.visible = false
			$Runestone6.visible = false
			$Runestone7.visible = false
			$Runestone8.visible = false
		5:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone4.frame = translation[3]
			$Runestone5.frame = translation[4]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = true
			$Runestone4.visible = true
			$Runestone5.visible = true
			$Runestone6.visible = false
			$Runestone7.visible = false
			$Runestone8.visible = false
		6:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone4.frame = translation[3]
			$Runestone5.frame = translation[4]
			$Runestone6.frame = translation[5]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = true
			$Runestone4.visible = true
			$Runestone5.visible = true
			$Runestone6.visible = true
			$Runestone7.visible = false
			$Runestone8.visible = false
		7:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone4.frame = translation[3]
			$Runestone5.frame = translation[4]
			$Runestone6.frame = translation[5]
			$Runestone7.frame = translation[6]
			$Runestone1.visible = true
			$Runestone2.visible = true
			$Runestone3.visible = true
			$Runestone4.visible = true
			$Runestone5.visible = true
			$Runestone6.visible = true
			$Runestone7.visible = true
			$Runestone8.visible = false
		8:
			$Runestone1.frame = translation[0]
			$Runestone2.frame = translation[1]
			$Runestone3.frame = translation[2]
			$Runestone4.frame = translation[3]
			$Runestone5.frame = translation[4]
			$Runestone6.frame = translation[5]
			$Runestone7.frame = translation[6]
			$Runestone8.frame = translation[7]
			get_tree().call_group("Runestones", "show")

#------------LISTENERS----------------

#listens for the "pressed()" signal from the submit button.
#Thus, when the submit button is pressed, capture the text from the lineedit 
#node and emit the custom generate_golem signal 
func _on_SubmitButton_pressed() -> void:
	confirmationPopup.popup_centered_ratio(0.4)

#calls generateGolem when the user presses enter on the lineEdit
func _on_LineEdit_text_entered() -> void:
	confirmationPopup.popup_centered_ratio(0.4)

func _on_LineEdit_text_changed(new_text: String) -> void:
	if new_text.empty():
		get_tree().call_group("Runestones", "hide")
		return
	new_text = new_text.to_lower()
	displayRunestones(new_text)

func _on_ConfirmationDialog_confirmed() -> void:
	golemName = $LineEdit.text
	golemName = golemName.to_lower()
	generateGolem(golemName)
