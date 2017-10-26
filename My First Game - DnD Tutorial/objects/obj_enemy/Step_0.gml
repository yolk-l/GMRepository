/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 496A2080
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "df7edf25-54e0-4019-8019-8c7bf7ca2b6a"
var l496A2080_0 = false;
l496A2080_0 = instance_exists(obj_player);
if(l496A2080_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 783782B5
	/// @DnDParent : 496A2080
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0C0AAD44
	/// @DnDParent : 496A2080
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6F50B956
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00AD6241
/// @DnDArgument : "var" "hp"
if(hp == 0)
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 7FDF6FAD
	/// @DnDParent : 00AD6241
	/// @DnDArgument : "sound" "snd_death"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	/// @DnDSaveInfo : "sound" "750491e4-98f1-408c-bffd-44e8db25bcd6"
	audio_sound_pitch(snd_death, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 33A3EA72
	/// @DnDParent : 00AD6241
	/// @DnDArgument : "soundid" "snd_death"
	/// @DnDSaveInfo : "soundid" "750491e4-98f1-408c-bffd-44e8db25bcd6"
	audio_play_sound(snd_death, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16DD25B5
	/// @DnDApplyTo : 504cb9aa-2be7-4f44-8b22-8e5208feab66
	/// @DnDParent : 00AD6241
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "thescore"
	with(obj_score) {
	thescore += 5;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E896C3A
	/// @DnDParent : 00AD6241
	instance_destroy();
}