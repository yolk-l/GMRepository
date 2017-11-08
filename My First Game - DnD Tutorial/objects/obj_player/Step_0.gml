/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5DBAE84E
/// @DnDArgument : "key" "ord("D")"
var l5DBAE84E_0;
l5DBAE84E_0 = keyboard_check(ord("D"));
if (l5DBAE84E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 354EFC9D
	/// @DnDParent : 5DBAE84E
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "room_width"
	if(x <= room_width)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D267E87
		/// @DnDParent : 354EFC9D
		/// @DnDArgument : "expr" "+4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += +4;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6B9CE995
/// @DnDArgument : "key" "ord("A")"
var l6B9CE995_0;
l6B9CE995_0 = keyboard_check(ord("A"));
if (l6B9CE995_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A404480
	/// @DnDParent : 6B9CE995
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "4"
	if(x >= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 77BCB616
		/// @DnDParent : 0A404480
		/// @DnDArgument : "expr" "-4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -4;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 43AB59EA
/// @DnDArgument : "key" "ord("W")"
var l43AB59EA_0;
l43AB59EA_0 = keyboard_check(ord("W"));
if (l43AB59EA_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 06BC7D07
	/// @DnDParent : 43AB59EA
	/// @DnDArgument : "expr" "y >= 0"
	if(y >= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 203E4F7A
		/// @DnDParent : 06BC7D07
		/// @DnDArgument : "expr" "-4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += -4;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 1E8EBC1C
/// @DnDArgument : "key" "ord("S")"
var l1E8EBC1C_0;
l1E8EBC1C_0 = keyboard_check(ord("S"));
if (l1E8EBC1C_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1B01D298
	/// @DnDParent : 1E8EBC1C
	/// @DnDArgument : "expr" "y <= room_height"
	if(y <= room_height)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65B3C198
		/// @DnDParent : 1B01D298
		/// @DnDArgument : "expr" "+4"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += +4;
	}
}

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 36F36E99
/// @DnDArgument : "var" "dir"
/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)"
var dir = point_direction(x,y,mouse_x,mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 09D6532E
/// @DnDArgument : "angle" "dir"
image_angle = dir;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 52D3AA0D
var l52D3AA0D_0;
l52D3AA0D_0 = mouse_check_button(mb_left);
if (l52D3AA0D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F3D473A
	/// @DnDParent : 52D3AA0D
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(cooldown < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 15BD2955
		/// @DnDParent : 3F3D473A
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""BulletsLayer""
		/// @DnDSaveInfo : "objectid" "5c756a4c-714b-4de1-8c1a-14f6f5093187"
		instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A6DB70D
		/// @DnDParent : 3F3D473A
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 10;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13EBE0B5
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -1;