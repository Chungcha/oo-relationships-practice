require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

######Bakery######
# sara_lee = Bakery.new("Sara_Lee")
# ice_cream = Dessert.new("Ice Cream",sara_lee)
# ice = Ingredients.new("Ice", ice_cream, 10)
# cream = Ingredients.new("Whipped Cream", ice_cream, 50)
###########



######Airbnb#####
# detroit=Listing.new("Detroit")
# canada=Listing.new("Canada")
# nyc=Listing.new("NYC")

# charlie=Guest.new("Charlie")
# mas=Guest.new("Mas")
# lou=Guest.new("Lou")

# detroit_trip=Trip.new(detroit,charlie)
# detroit_trip1=Trip.new(detroit,mas)
# canada_trip=Trip.new(canada,charlie)
# nyc_trip=Trip.new(nyc,lou)
#############

#####Lyft#####
# charlie=Passenger.new("Charlie")
# jerry=Passenger.new("Jerry")
# luis=Passenger.new("Luis")
# zim=Passenger.new("Zim")

# bob=Driver.new("Bob")
# mas=Driver.new("Mas")
# tak=Driver.new("Tak")

# a_to_b=Ride.new(charlie,bob,2.0)
# a_to_c=Ride.new(charlie,mas,3.0)
# a_to_d=Ride.new(charlie,tak,4.0)
# a_to_e=Ride.new(zim,tak,9.0)
# a_to_f=Ride.new(luis,bob,4.0)
# a_to_g=Ride.new(zim,bob,8.0)
# a_to_h=Ride.new(jerry,tak,20.0)
################

# Take notes on the test driven stuff.
# puts "Passenger has a class method, premium_members"



# puts "Driver has an instance method, rides, thatreturns all rides a driver has given"
# puts 


#####imdb######
# actormi
# tom_cruise=Actor.new("Tom Cruise")

# # movie
# mi=Movie.new("Mission Impossible")

# # character
# ethan_hunt=Character.new(tom_cruise, "Ethan Hunt")

# # movie_char
# t_m=Movie_char.new(mi,ethan_hunt)

# # show
# m_i_s=Show.new("Mission Impossible")

# # show_char

# m_e=Show_char.new(m_i_s,ethan_hunt)

####crowdfunding######

# ####User
# charlie=User.new("Charlie")
# arpit=User.new("Arpit")
# rahul=User.new("Rahul")
# myles=User.new("Myles") #does not create a project

# ####Projects
# proj1=Project.new("Proj_1", charlie)
# proj2=Project.new("Proj_2",charlie)
# proj3=Project.new("Proj_3", arpit)
# proj4=Project.new("Proj_4", rahul)
# proj5=Project.new("Proj_5", rahul)

# ###Pledges
# p1=Pledge.new(charlie,proj1,12) #user pledges his own project
# p2=Pledge.new(arpit,proj4,4)
# p3=Pledge.new(rahul,proj5,200)
# p4=Pledge.new(myles,proj1,39)
# p5=Pledge.new(charlie,proj2,48)
# p6=Pledge.new(charlie,proj4,32)
# p7=Pledge.new(charlie,proj5,9)
# p8=Pledge.new(arpit,proj2,99)
# p9=Pledge.new(arpit,proj4,13)
# p10=Pledge.new(charlie,proj4,10)

#####GYM###########
##location##
detroit=Location.new("Detroit")
dc=Location.new("DC")
fairfax=Location.new("Fairfax")

##trainer##
charlie=Trainer.new("Charlie")
larry=Trainer.new("Larry")
luis=Trainer.new("Luis")

##loc_train##
loc1=Loc_train.new(detroit,charlie)
loc2=Loc_train.new(detroit,larry)
loc3=Loc_train.new(detroit,luis)
loc4=Loc_train.new(fairfax,charlie)
loc5=Loc_train.new(dc,charlie)
loc6=Loc_train.new(dc,luis)

##client##
mas=Client.new("Mas",charlie)
tak=Client.new("Tak",charlie)
bob=Client.new("Bob", larry)
susan=Client.new("Susan",luis)

binding.pry
0