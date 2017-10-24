/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 19C32EA3
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
var vc = view_camera[0];

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AEFB9AC
/// @DnDArgument : "var" "cx"
/// @DnDArgument : "value" "camera_get_view_x(vc)"
var cx = camera_get_view_x(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 224EA3E0
/// @DnDArgument : "var" "cy"
/// @DnDArgument : "value" "camera_get_view_y(vc)"
var cy = camera_get_view_y(vc);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D40C178
/// @DnDArgument : "var" "cw"
/// @DnDArgument : "value" "camera_get_view_width(vc)"
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3EE94C28
/// @DnDArgument : "color" "$FFF7F7FF"
draw_set_colour($FFF7F7FF & $ffffff);
draw_set_alpha(($FFF7F7FF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 41D4AFA8
/// @DnDArgument : "font" "font_score"
/// @DnDSaveInfo : "font" "88e4b6d3-2d60-490d-b033-1def0e855e6c"
draw_set_font(font_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2DB77D99
/// @DnDArgument : "x" "cx + (cw/2) - 50"
/// @DnDArgument : "y" "cy + 25"
/// @DnDArgument : "caption" ""The Score : ""
/// @DnDArgument : "var" "thescore"
draw_text(cx + (cw/2) - 50, cy + 25, string("The Score : ") + string(thescore));