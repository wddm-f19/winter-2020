class Animal {
	constructor(name) {
		this.name = name
	}
	hello() {
		return `My name is ${this.name}`
	}
}



class Rabbit extends Animal {
	speak() {
		console.log('Hop hop hop')
	}
}

class Dog extends Animal {
	speak() {
		console.log('Woof woof woof')
	}
	wag() {
		console.log('Wag wag wag')
	}
}


const rabbit = new Rabbit(`Bugs Bunny`)
console.log( rabbit.hello() )
rabbit.speak()
//rabbit.wag()

const dog = new Dog(`Scooby Doo`)
console.log( dog.hello() )
dog.speak()
dog.wag()