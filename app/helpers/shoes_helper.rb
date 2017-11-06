module ShoesHelper

  def fullname_shoe
    @shoe.brand + " " + @shoe.title
  end

  def search_helper
    fullname_shoe.split(",")
  end 
end
