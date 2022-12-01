
    restaurants = Restaurant.create([{name: Faker::Restaurant.name, address: Faker::Address.full_address},
        {name: Faker::Restaurant.name, address: Faker::Address.full_address},
        {name: Faker::Restaurant.name, address: Faker::Address.full_address},
        {name: Faker::Restaurant.name, address: Faker::Address.full_address},
        {name: Faker::Restaurant.name, address: Faker::Address.full_address}])

        pizza1 = Pizza.create(name: "BBQ Meatlovers", ingredients: "Dough, BBQ sauce, mozzarella, pepperoni, bacon, cabanossi, beef mince, ham")
        pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
        pizza3 = Pizza.create(name: "Meat pizza", ingredients: "Dough, Tomato Sauce, Cheese, real beef, hickory-smoked bacon, and julienne-cut Canadian bacon")
        pizza4 = Pizza.create(name: "Capricciosa", ingredients: "Dough, Pizza sauce, mozzarella, ham, artichoke, mushrooms, olives")
        pizza5 = Pizza.create(name: "Cheese and Garlic", ingredients: "Dough, Pizza sauce, mozzarella, garlic, oregano")

        restaurant_pizza1 = RestaurantPizza.create(price: 21, pizza_id: pizza1.id, restaurant_id: 1)
        restaurant_pizza2 = RestaurantPizza.create(price: 26, pizza_id: pizza3.id, restaurant_id: 2)
        restaurant_pizza3 = RestaurantPizza.create(price: 18, pizza_id: pizza1.id, restaurant_id: 3)
        restaurant_pizza4 = RestaurantPizza.create(price: 30, pizza_id: pizza2.id, restaurant_id: 4)
        restaurant_pizza5 = RestaurantPizza.create(price: 27, pizza_id: pizza5.id, restaurant_id: 5)
