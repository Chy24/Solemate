json.extract! post, :id, :user_id_id, :title, :description, :image, :shipping, :condition, :asking_price, :auction, :created_at, :updated_at
json.url post_url(post, format: :json)
