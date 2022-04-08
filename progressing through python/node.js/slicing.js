var Health = [
    {
        "name": "Health",
        "value": "100",
        "unit": "%"
    }
]



yesorno = prompt("Wanna lower your health?: ");
howmuchhealth = prompt("How much health do you want to lower?: ");

// lower the health the user wanted to lower
if (yesorno == "yes") {
    Health[0].value = Health[0].value - howmuchhealth;
    console.log(Health[0].value);
}


if (Health[0].value <= 0) {
    console.log("You died!");
}
