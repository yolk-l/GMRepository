/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 33048280
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35566A0A
/// @DnDArgument : "expr" "random_range(-4,4)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "direction"
direction += random_range(-4,4);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 240E1BED
/// @DnDArgument : "speed" "16"
speed = 16;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5CBD7219
/// @DnDArgument : "angle" "direction"
image_angle = direction;