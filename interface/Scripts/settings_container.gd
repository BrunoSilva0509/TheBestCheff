extends ColorRect
class_name SettingsContainer

var _world_environment: WorldEnvironment = null

func _ready() -> void:
	#_world_environment = get_tree().get_nodes_in_group("environment")[0]
	
	for _bttn in get_tree().get_nodes_in_group("Options_button"):
		if _bttn is CheckBox:
			_bttn.pressed.connect(_on_button_pressed.bind(_bttn))
		
		if _bttn is OptionButton:
			_bttn.item_selected.connect(_on_button_selected.bind(_bttn))
				
func _on_button_pressed(_button_pressed: CheckBox) -> void:
	var _parent: HBoxContainer = _button_pressed.get_parent().get_parent()
	var _text_property: String = _parent.name.to_snake_case()
	
	match _text_property:
		"use_taa":
			pass
		
		"display_fps":
			pass
			
		"ssr_enabled":
			pass
			
		"ssao_enabled":
			pass
			
		"ssil_enabled":
			pass
		
		"sfdgi_enabled":
			pass
			

func _on_button_selected(_button_index: int, _button: OptionButton) -> void:
	pass
