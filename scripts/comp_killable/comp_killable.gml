function comp_killable(_killableHP = 0)
{
	if (hp <= _killableHP)
	{
		instance_destroy();
	}
}