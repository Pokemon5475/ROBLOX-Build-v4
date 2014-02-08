-- This script aims to "unlock" the colors which don't replicate very well
-- between client and server.

local function onDescendantAdded(Child)
	if Child:IsA("BrickColorValue") and Child.Name == "NewColor: and Child.Parent:IsA("BasePart") then
		Child.Parent.BrickColor = Child.Value;
	end
end

Workspace.DescendantAdded:connect(onDescendantAdded);
