var colors = ["Blue", "Red", "Yellow", "Green"];

var names = ["Dave", "Bill", "Steve", "Charles"];

colors.push("Purple");
names.push("Josh");

var stable = {};
for (var i = 0; i < names.length; i++) {
	stable[names[i]] = colors[i];
};

console.log(stable);

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;

	this.rev = function() { console.log("Vroom! Vroom!"); };

}

console.log("Let's build a car:");
var first_car = new Car("Honda", "Prelude", 1978);
first_car.rev();
console.log(first_car);
var second_car = new Car("Ford", "Mustang", 1985);
second_car.rev();
console.log(second_car);
var third_car = new Car("Subaru", "Forester", 2016);
third_car.rev();
console.log(third_car);