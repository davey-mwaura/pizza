RestaurantPizza.destroy_all
Restaurant.destroy_all
Pizzafood.destroy_all


# Restaurants
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Pizzas
pizzafood1 = Pizzafood.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizzafood2 = Pizzafood.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

RestaurantPizza.create(price: 10, restaurant_id: restaurant1.id, pizzafood_id: pizzafood1.id)
RestaurantPizza.create(price: 12, restaurant_id: restaurant1.id, pizzafood_id: pizzafood2.id)
RestaurantPizza.create(price: 14, restaurant_id: restaurant2.id, pizzafood_id: pizzafood1.id)
RestaurantPizza.create(price: 16, restaurant_id: restaurant2.id, pizzafood_id: pizzafood2.id)
