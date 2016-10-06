var colors = ["Blue", "Red", "Yellow", "Green"];

var names = ["Dave", "Bill", "Steve", "Charles"];

colors.push("Purple");
names.push("Josh");

var stable = {};
for (var i = 0; i < names.length; i++) {
	stable[names[i]] = colors[i];
};

console.log(stable);