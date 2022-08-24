package classcast;

public class CatDogRun2 {

	public static void main(String[] args) {
		Dog dog = new Dog();
		changeDog(dog);
		
		Cat cat = new Cat();
		// class classcast.Cat cannot be cast to class classcast.Dog 
		changeDog(cat); 
		
		System.out.println("THE END");

	}
	
	public static void changeDog(Animal animal) {
		if(animal instanceof Dog) {
			Dog dog = (Dog)animal;
			System.out.println(dog);
		}
		else {
			System.out.println("animal은 Dog가 아닙니다.");
		}
	}

}
