extends Area2D


func _ready() -> void:
	area_entered.connect(_on_area_entered)
	play_floating_animation()
	
func play_floating_animation() -> void:
	var _tween := create_tween()
	var _sprite_2d := get_node("Sprite2D")
	var _position_offset := Vector2(0.0, 4.0)
	var _duration = randf_range(0.8, 1.2)
	_tween.tween_property(_sprite_2d, "position", _position_offset, _duration)
	_tween.tween_property(_sprite_2d, "position", -1.0 * _position_offset, _duration)
	_tween.set_loops()
	_tween.set_trans(Tween.TRANS_SINE)
	


func _on_area_entered(_on_area_entered: Area2D) -> void:
	queue_free()
