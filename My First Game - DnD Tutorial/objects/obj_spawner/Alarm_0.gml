/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 744C5199
/// @DnDArgument : "var" "xx"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_width"
var xx = (random_range(0, room_width));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 57B50F7A
/// @DnDArgument : "var" "yy"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "max" "room_height"
var yy = (random_range(0, room_height));

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 722AA2DB
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_enemyspawn"
/// @DnDArgument : "layer" ""EnemyLayer""
/// @DnDSaveInfo : "objectid" "caf21528-f464-4398-9b2a-78a9f93e72a5"
instance_create_layer(xx, yy, "EnemyLayer", obj_enemyspawn);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 612E54A3
/// @DnDArgument : "steps" "spawn_rate"
alarm_set(0, spawn_rate);