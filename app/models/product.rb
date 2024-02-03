class Product < ApplicationRecord
  self.primary_key = "product_id"
  self.table_name = "my_products"
end
