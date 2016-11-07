#Classes Lab/Homework

##Objectives:
- Understand how to make our own class in Ruby, and how to make an object from that class
- Be able to use the 'initialize' method and 'attr_accessor/reader' helpers
- Be able to assign and use instance variables with @
- Understand how to add methods to classes and use them

#Tasks:

###1. Create a Person class
People should have:

    - Name
    - Age
    
You should be able to access these by calling person.name or person.age. 
    
###2. Create a Car Class
Instances of Car should have:

    - Colour
    - Model
    - Fuel level
    - Speed

  - Speed should start at 0, Fuel level 100
  - You should be able to read the fuel and speed levels but not be able to update them directly.

  - Methods:
    - Accelerate - Increases speed by 10, decreases fuel by 5
    - Brake - Decreases speed by 10 - should not be able to go below 0.

    
###Extensions

- Add a driver property to the car, which should be assigned a person object.
- Add a 'pick_up_passengers' method to the car, which takes in a person as an argument and stores them inside the car object.
- Add a method to count how many passengers are currently in the car.   

__Make sure to write tests for your classes!!__
