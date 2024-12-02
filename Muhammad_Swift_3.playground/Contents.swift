import UIKit


/*
 Details

 Create base class Computer with common properties and methods.

 Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
 A function to display detailed specifications of each computer type.
 Create the Base Class (Computer)

 Add the following properties:
     brand: String
     processor: String
     ram: Int (amount of RAM in GB)
 Create an initializer for these properties.
 Add a method displaySpecs() that prints the values of these properties.
 Create Subclasses:

 Laptop:

 Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
 Override the displaySpecs() method to include this property.
 Desktop:

 Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).

 Override the displaySpecs() method to include this property.

 Server:

 Add an additional property rackUnits (an Int to specify the server's size in rack units).

 Override the displaySpecs() method to include this property.

 Write some test code:

 Create one object for each subclass (Laptop, Desktop, and Server).
 Assign appropriate values to their properties.
 Call the displaySpecs() method for each object to print their specifications.

 */

class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
        
    }
    
    func displaySpecs() {
        print("Brand: \(self.brand) Processor: \(self.processor) Ram: \(self.ram)")
    }
    
    func getBrand() -> String {
        return self.brand
    }
    
    func getProcessor() -> String {
        return self.processor
    }
    
    func getRam() -> Int {
        return self.ram
    
    }
    
}
 
//====Laptop===>

class Laptop: Computer {
    var isTouchscreen: Bool = false
        
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen

        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        print("\nLaptop Specs: \nBrand: \(super.getBrand()) \nProcessor: \(super.getProcessor()) \nRam: \(super.getRam()) GB")
    }
    
    
    func touchscreen () {
        if self.isTouchscreen == false {
            print("Touchscreen: No")
        } else {
            print("Yes")
        }
        
    }
}

//====Desktop====>

class Desktop: Computer {
    var hasDedicatedGPU: Bool = true
    
    init(brand: String, processor: String, ram: Int, hasDedicatedGPU: Bool) {
        self.hasDedicatedGPU = hasDedicatedGPU
        super.init(brand: brand, processor: processor, ram: ram)
    }
    override func displaySpecs() {
        print("\nDesktop specs: \nBrand: \(super.getBrand()) \nProcessor: \(super.getProcessor()) \nRam: \(super.getRam()) GB")
    }
    func dedicatedGPU(){
        if self.hasDedicatedGPU == true {
            print("Dedicated GPU:yes")
        }
    }
        
    }
 
//====Server====>

    class Server: Computer {
        private var rackUnits: Int = 4
        
        
        init(brand: String, processor: String, ram: Int, rackUnits: Int) {
            self.rackUnits = rackUnits
            
            super.init(brand: brand, processor: processor, ram: ram)
            
        }
        override func displaySpecs() {
            print("\nServer Specs: \nBrand: \(super.getBrand()) \nProcessor: \(super.getProcessor()) \nRam: \(super.getRam()) GB")
        }
        
        func numberOfRackUnits() {
            if self.rackUnits > 0 {
                print("Rack Units: 4")
            }
        }
    }
    
   // test Code

     var laptop1: Laptop = Laptop(brand: "Apple", processor: "M3", ram: 16, isTouchscreen: false)
     laptop1.displaySpecs()
     laptop1.touchscreen()

     var desktop1: Desktop = Desktop(brand: "Dell", processor: "i9", ram: 32, hasDedicatedGPU: true)
     desktop1.displaySpecs()
     desktop1.dedicatedGPU()

     var server1: Server = Server(brand: "HP", processor: "Xeon", ram: 64, rackUnits: 4)
     server1.displaySpecs()
     server1.numberOfRackUnits()
     
    

