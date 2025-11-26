/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1FD51C87
/// @DnDApplyTo : {obj_text}
with(obj_text) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 31CFB89F
/// @DnDArgument : "objectid" "obj_timer"
/// @DnDSaveInfo : "objectid" "obj_timer"
instance_create_layer(0, 0, "Instances", obj_timer);

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 6358B073
/// @DnDArgument : "objind" "obj_egg_hatch"
/// @DnDSaveInfo : "objind" "obj_egg_hatch"
instance_change(obj_egg_hatch, true);