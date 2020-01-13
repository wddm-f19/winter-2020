# Class basics

## Video recording

The lesson can be reviewed here: <https://ca-lti.bbcollab.com/recording/fbbc0892e9d0430fb3aeb843af901e39>


## Notes

### Object-oriented terms
- **Class**: is a blueprint for an entity
- **Object**: is created from a class
- **Instance**: is a single Object that was built using a class

### Class data structures
- **Properties**: Variables that are scoped to the class
- **Method**: Functions that are scoped to the class
   - **Constructor**: A special method that runs ONCE when the "new" instance is created, receives parameters from the instantiation

### this
The keyword "this" when used in a class definition, refers to the class itself. Any reference to a property or method from within this class, must start with `this.` when used inside of methods to ensure that the scope of the property or method we're requesting is of the class, not of the method locally.

### Ways to create Objects

#### Object definitions

```javascript
// 1. Object literal
const GreetingA = {
  username: `World`,
  greet: function() {
    console.log(`Hello, ${this.username}.`)
  }
}

// 2. Functional
function GreetingB() {
  this.username = `World`,
  this.greet = function() {
    console.log(`Hello, ${this.username}.`)
  }
}

// 3. Classes
class GreetingC {
  username = `World`
  greet() {
    console.log(`Hello, ${this.username}.`)
  }
}
```

#### Creating instances

```javascript
let a = Object.create(GreetingA)
let b = new GreetingB()
let c = new GreetingC()

a.greet()
b.greet()
c.greet()
```

## Homework
Using the project folder `messenger-afternoon`:
1. Wrap the application data and code not currently in a class, into a class called `Messenger`
   1. Receive a reference to the DOM element `ul#messages` as a parameter to the constructor
   2. Create an instance of a `Messenger()` and ensure that the application behaves as it did before
2. Consider how new messages would be created and where the function would be stored
   1. Build the functionality in code, or just write down what you think would need to be done
3. Create a `User` class based on what you think it needs to hold (properties) and do (methods)
   1. When a new `Message` is created, ensure it has a `User` instance to send `to` and `from`
