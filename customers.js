var mysql = require("mysql")
var inquirer = require("inquirer")
var table=require("easy-table")


var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon"
})


show_inventory()



result_obj=[]

function show_inventory() {


    connection.connect(function(err) {if (err) throw err})

    connection.query("SELECT * FROM products", function(err, results) {
    if (err) throw err;
    console.log('item'.padEnd(10) + 'product_name - deparment_name - price' ) 
    console.log('---------------------------------------------------------' ) 
    result_obj=results
    for (i=0;i<results.length;i++){
    console.log(results[i].item_id.padEnd(10)+ results[i].product_name +'-'+ results[i].department_name +'-'+ results[i].price)
}
purchase()
})
 }   



function purchase(){

inquirer.prompt( [
    {message:"what item would you like to purchase?",
    type:"input",
    name:"item"
} ,

{message:"How Many woudl you like to purchase?",
type:"input",
name:"quantity"
} 

]).then (function (answer){


check_availability(answer.item, answer.quantity)

})

}


function check_availability(item,qty){

var query=connection.query("SELECT *  FROM products where ?",{item_id:item}, function(err, results) {
        if (err) throw err;
        
        if(results[0].stock_quantity<qty){
            console.log("there are only "+ results[0].stock_quantity + " units available of this item")
            connection.end()

        } else{
            update_inventory(item,qty)
            console.log("Invoice Amount:" + results[0].price*qty)

        }
})

}

     
function update_inventory(item,qty){

    connection.query("UPDATE products set stock_quantity=stock_quantity-"+qty +" where item_id='" + item + "'", function(err, results) {
        if (err) throw err;
        connection.end()
    })


}