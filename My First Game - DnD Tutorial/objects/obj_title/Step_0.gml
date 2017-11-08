/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7D247669
/// @DnDArgument : "alpha" "0.01"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += 0.01;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1352F455
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(image_alpha > 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 3EBF8DEE
	/// @DnDParent : 1352F455
	image_alpha = 1;
}