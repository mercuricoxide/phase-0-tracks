// array of colors
var colors = ["red", "blue", "green", "yellow"];

//array of horse names
var names = ["charlie", "ponyta", "rapidash", "mudbray"];

//add color to the colors array
colors.push("orange");

//add horse to the horses array
names.push("mudsdale");

//combine the two arrays of color and horses into one data structure
//create an empty object and pass values inside

var horses = {}

//add key-value pairs by iterating through the two arrays

//horses["charlie"] = "red"; (test case)

//console.log(horses)

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);