local Connections = {};

function onChildAdded(child, player)
	if child.Name=="SpawnRequest" then
		player:LoadCharacter(true);
	end
end

function onPlayerEntered(player)
	Connections[player] = player.ChildAdded:connect(function(c) onChildAdded(c, player); end);
end

function onPlayerLeft(player)
	if Connections[player] and Connections[player].connected then
		Connections[player]:disconnect();
		Connections[player] = nil;
	end
end

for i, v in pairs(game.Players:GetChildren()) do
	onPlayerEntered(v);
end
game.Players.ChildAdded:connect(onPlayerEntered);
game.Players.ChildRemoved:connect(onPlayerLeft);
