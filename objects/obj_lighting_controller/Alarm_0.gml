/// @description Switch to night

darkness_alpha_real += 0.025;

if (darkness_alpha_real < darkness_alpha) alarm_set(0, 1)
