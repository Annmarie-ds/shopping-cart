# Shopping Cart

## Setup
This application has been built on
- Ruby version 2.7.1

And has been tested on
- Rspec version: 3.10

Run ``` $ bundle install ``` before running the app
IF YOU GET an ERROR message stating: You must use Bundler 2 or greater with this lockfile, then run this command:
```
$ gem install bundler
```

## Run the application
From the application's lib folder, run
```
$ ruby app.rb
```
The app will prompt you with instructions, 
enter the numbers indicated by the instructions.

Example Input and Output:
```
Please enter 1, 2 or 3 from the options below:
----------------------------------------------
1. Browse shop
2. View cart
3. Checkout
----------------------------------------------
```
Input: 2

Output: 
```
Products in Shopping Cart:
1. Chain Ring 146mm - $65.95
2. Front Derailleur - 34.9mm - $31.22
3. Front Derailleur - 34.9mm - $31.22
TOTAL: $128.39
Discount applied: 20% off on total greater than 100
Total after discount: $102.71
```

### Application functions
- Load a list of products from a file.
- List product details to the user.
- Add products to a Shopping Cart.
- Apply promotional discounts.
    - 10% off on total greater than $20
    - 15% off on total greater than $50
    - 20% off on total greater than $100
- Calculate and display the total cost

## Run the tests
From the application's main folder, run
```
$ rspec
```
