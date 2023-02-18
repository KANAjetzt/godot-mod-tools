tool
extends EditorPlugin

var dock: Control


func _enter_tree():
	dock = preload("res://addons/godot-mod-export/dock.tscn").instance()
	dock.base_theme = get_editor_interface().get_base_control().theme

	add_control_to_bottom_panel(dock, 'Mod Tools')


func _exit_tree():

	remove_control_from_bottom_panel(dock)

	dock.free()
