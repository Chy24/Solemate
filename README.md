# Two Sided Marketplace Application
## Sole mate
[Heroku Link](https://limitless-brook-71880.herokuapp.com/)

[Google Presentation](https://docs.google.com/presentation/d/1ITX7G_nVzETCy4DMLmNUjFSyxkkwes-rLhFi4AJ79GM/edit#slide=id.p)

## The Problem? 
Australia doesn’t have a centralised place that consumers can purchase shoes. Currently, if you’re looking for a specific shoe, you would have to research various sites such as the site's website, eBay, Gumtree, Facebook etc. This takes a lot of time and effort having to compare and continually visit these websites until you’re able to find the particular product or have it at a certain price. 

![Examples](/app/assets/images/Examplewebsite.png "Examples")

## The Solution? 
I decided to create a two-sided marketplace for buying, selling and trading shoes at one secure, convenient location. The website would have a database of all the shoes created where users can search for a specific shoe and see if a retailer or another user is selling it. If neither are available, they are also able to post requests up to see if anyone can help. The website would offer a wide variety of different outlets for the user to purchase their perfect shoe.  

## Design Process
![Inspiration Pinterest Board](/app/assets/images/Pinterestboard.png "Inspiration Pinterest Board")
[Pinterest Board Link](https://www.pinterest.com.au/chymeng24/market-place-design/)

I wanted my designs to be simple and elegant where the primary focus would be the products. Most of the designs on my inspiration board were very simple with only three or four colours. They all have big hero images to showcase the products which is what I am also aiming to do.  

![Figma Wireframes](/app/assets/images/Figmadesigns.png "Figma Wireframes")
[Figma Wireframe Link](https://www.figma.com/file/X9lgBkIV99NV1vNqNF9w4H2C/Solemates)

My wireframes are very simple with not much content in them. As a said earlier, I wanted a simple and elegant design where the main content would be the photos of the shoes which I think is the most important. 

![ERD](/app/assets/images/ERD.png "ERD")

My ERD 

![ERD1](/app/assets/images/Trelloboard1.png "ERD1")
![ERD2](/app/assets/images/Trelloboard2.png "ERD2")
[Trello Board Link](https://trello.com/b/hDYsJoDr/online-shoe-trading-blog)

My Trello board for planning. Link is provided. 

### Gems
devise,  carrierwave , bootstrap, mini_magick, jquery-rails,  stripe, mailgun-ruby,  httparty,  bootstrap_form, font-awesome-rails,  pundit, countries, fog-aws 

### APIs 
For APIs I decided to use a GIPHY API for my messenger model so that users were able to send a GIF as a message. This is because sometimes words cannot describe what you want to say to someone else. 
I also decided to use a converter application for prices. Users can come from any country, and as the site is based in Australia, I wanted users to be able to convert the amount to know what it would cost in their currency. There were also some other APIS included from the gems that were asked to implement such as Stripe or Mail gun. 


#### Challenges 
![Migrations](/app/assets/images/Migrations.png "Migrations")

I faced a lot of problems building this application up from scratch. There were so many challenges throughout the project but here are some
* Naming conventions are taken for granted when you’re making a small application but when you begin making one this large, you soon realise that naming things is a massive battle
* I took the ERD for granted and didn’t think it was essential. Its very important
* Rushing my code and then migrating my models and then making a typo and not double checking the migration file. Many migrations because of adding, removing and changing columns to ridiculous. 
* Understanding the MVC but this project helped immensely 
* Routing
* The CSS was difficult even though I barely did any. Decided on using a lot of Bootstrap instead. 
* I found that keeping a timeline was difficult since it was the first rails project I had done and did not know how to manage my time

### Favorite parts

* I thoroughly enjoyed the design part of the project in Figma and finding inspiration (I didn’t get to put all aspects of them in the project). 
* Implementing a feature and having so many errors is so daunting. But the feeling that you receive when you're able to fix them and see what you’ve made come to life is fantastic. 

### Future implementations 

There were so many features that I had planned to implement in my Figma that I wasn’t able to achieve. 
* I wasn’t able to able to design a footer, about us page, contact page and I wanted to have a news page where daily information about releases of sneakers was being put out
* Email and phone notifications would have been a function that I would have liked to have when a user would get a message from another user about a post, and they would receive an email notification. Phone notification so they wouldn’t have to supply the user with an actual phone number on the website. 
* User profiles didn’t show all the things I had intended it to have. 
    * Rating system on their profiles, so other users were able to see whether they were trustable sellers and buyers. This would advise other users whether they should deal with individuals.
    * A list of shoes that followers liked and that they could receive emails once a post had been put up with that particular shoe that they wanted. 
    * A list of my current posts
* A search function to be able to search items based on categories
* A rating system for shoes where users can give their reviews. It's very common for users to provide performance reviews on athletic shoes etc.

There were also expansion plans that I had thought of if the application had taken off. 
* Consignment is the function of when a store takes a product from a user and then sells it for them for a price. Then the assignee would receive a cut from the profits (e.g. 10%) of the selling price. This would remove the fuss from users having to sell their products and still receive a fair amount for their products
* Authentication service where the store would have a verified way to check whether the product was legitimate. In many situations, users spend hundreds on shoes and they would like the reassurance that the product they’re buying is real. 
* Having a social media connection where users were able to showcase the shoe they were wearing to give others inspiration for what they would purchase next
* Having shoe related business connected to the website where users could compare prices of all their stock. For example, it would show the cost of a pair of particular shoes from Platypus,  HYPE and the original retailer and help the user get the best possible deal. 

I understand that this was an MVP and in the short time that we were given, all these features would have been too ambitious for the skill level that I currently possess. 