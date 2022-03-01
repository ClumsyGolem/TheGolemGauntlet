extends Control

signal generate_golem #creates a custom signal
var golemName : String = ""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func generateGolem(pGolemName) -> void:
	emit_signal("generate_golem", pGolemName)


#------------LISTENERS----------------

#listens for the "pressed()" signal from the submit button.
#Thus, when the submit button is pressed, capture the text from the lineedit 
#node and emit the custom generate_golem signal 
func _on_SubmitButton_pressed() -> void:
	golemName = $LineEdit.text
	generateGolem(golemName)

#calls generateGolem when the user presses enter on the lineEdit
func _on_LineEdit_text_entered(new_text: String) -> void:
	generateGolem(new_text)
