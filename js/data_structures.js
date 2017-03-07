var colors = ["red", "blue", "green", "yellow"];

var names = ["Ponyta", "Rapidash", "Squirtle", "Charmander"];

colors.push("purple");

names.push("Bulbasaur");

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)