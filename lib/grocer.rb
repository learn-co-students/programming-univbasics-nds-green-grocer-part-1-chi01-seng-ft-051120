def find_item_by_name_in_collection(name, collection)
  collection_index = 0 
  while collection_index < collection.length do 
    if
      collection[collection_index][:item] == name
      sought_item_info = collection[collection_index]
    end 
    collection_index += 1 
  end
  sought_item_info
  # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  cleaned_cart = []
  cart_index = 0
  while cart_index < cart.length do 
    cleaned_cart << cart[cart_index]
    cleaned_cart[cart_index][:count] = 1
    compare_index = 0 
    while compare_index < cart.length do 
      if cart[cart_index] == cart[compare_index] && cart_index != compare_index
        cleaned_cart[cart_index][:count] += 1
        cart.delete_at(compare_index)
      end
        compare_index += 1
    end
    cart_index += 1
  end
  cleaned_cart
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

  