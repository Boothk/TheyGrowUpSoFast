/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6D195790
/// @DnDArgument : "key" "ord("S")"
var l6D195790_0;l6D195790_0 = keyboard_check(ord("S"));if (l6D195790_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 18A7C295
	/// @DnDParent : 6D195790
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 18C338F4
/// @DnDArgument : "key" "ord("A")"
var l18C338F4_0;l18C338F4_0 = keyboard_check(ord("A"));if (l18C338F4_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 40EA4873
	/// @DnDParent : 18C338F4
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += -move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2691DCB6
/// @DnDArgument : "key" "ord("D")"
var l2691DCB6_0;l2691DCB6_0 = keyboard_check(ord("D"));if (l2691DCB6_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 358E9E42
	/// @DnDParent : 2691DCB6
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += move_speed;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 44B4638F
/// @DnDArgument : "key" "ord("W")"
var l44B4638F_0;l44B4638F_0 = keyboard_check(ord("W"));if (l44B4638F_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 538804B1
	/// @DnDParent : 44B4638F
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -move_speed;}