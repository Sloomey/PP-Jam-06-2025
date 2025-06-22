/// @description Frame by frame components

comp_killable();

if (wpn.magLeft == 0 && !wpn.alarm[0]) wpn.reload(); // Reloading when no bullets left

