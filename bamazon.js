var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  port: 3306,


  user: "root",


  password: "yourRootPassword",
  database: "bamazonDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  startBamazon();
});

function startBamazon() {
  inquirer
    .prompt([{
      name: "productID",
      type: "input",
      message: "What would you like? input ID"
    }, {
      name: "productAmount",
      type: "input",
      message: "How many would you like?"
    }])
    .then(function (response) {
      console.log(response);
      connection.query("SELECT * FROM products WHERE ?", {prod_id: parseInt(response.productID)}, function (err, res) {
        if (err) throw err;
        console.log(res[0].product_name);
        console.log(res[0].stock_quantity);
        console.log(res[0].price);
        let quantity = res[0].stock_quantity;

        if (quantity >= productAmount) {
            let proRemaining = quantity - productAmount;
            console.log(proRemaining);
          }
      
      })


    });
}

