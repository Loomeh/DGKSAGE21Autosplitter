state("David Get Keen")
{
	bool rankingScreen : "mono-2.0-bdwgc.dll", 0x49E0A5;
	bool loading : "mono-2.0-bdwgc.dll", 0x49E03D;
	bool inGame: "UnityPlayer.dll", 0x1567D02;
}

	start
	{
		return current.inGame;
	}
	
	isLoading
	{
	return current.loading;
	}
	
	split
	{
		return !old.rankingScreen && current.rankingScreen;
	}
