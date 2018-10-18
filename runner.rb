require 'unirest'
require 'awesome_print'

response = Unirest.post("http://localhost:3000/api/products",
  parameters: {
    input_name: "magna bucket", 
    input_image_url: "www.magnabucket.com", 
    input_description: "Best bucket you ever seen",
    input_price: 15
  }
)

ap response.body
