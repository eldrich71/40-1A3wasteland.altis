sleep 90;

private ["_messages", "_timeout"];

_messages = [
	["40-1", "A3Wasteland"],
	["Welcome", (name player)],
	["A3Wasteland", worldName],
	["Teamspeak", "40-1.teamspeak3.40-1.net"],
	["Website/Forums", "www.40-1.net"],
	["Hint", "Mine Detectors Also Detect Spawn Beacons(Range 95m)."],
	["Admin", "Admin cannot teleport or spawn cash/items we play the same as you plz remember this before you shout admin abuse."]

];

_timeout = 5;
{
	private ["_title", "_content", "_titleText"];
	uiSleep 2;
	_title = _x select 0;
	_content = _x select 1;
	_titleText = format[("<t font='TahomaB' size='0.40' color='#a81e13' align='left' shadow='1' shadowColor='#000000'>%1</t><br /><t shadow='1'shadowColor='#000000' font='TahomaB' size='0.60' color='#FFFFFF' align='left'>%2</t>"), _title, _content];
	[_titleText,[safezoneX + safezoneW - 0.8,0.50],[safezoneY + safezoneH - 0.8,0.7],_timeout,0.5] spawn BIS_fnc_dynamicText;
	uiSleep (_timeout * 1.1);
} forEach _messages;
