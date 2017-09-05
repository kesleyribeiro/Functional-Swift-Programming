//: Playground - noun: a place where people can play
/*
{
    name : “Kesley Ribeiro”,
    title : “iOS Developer",
    linkedin : “linkedin.com/in/kesleyribeiro",
    github : [“https://www.github.com/kesleyribeiro"]
}
*/

import UIKit

struct Contact {
    var firstName: String
    var lastName: String
    var email: String
    var city: String
    var state: String
    var age: Int
    var experienceDuration: Int
}

let contacts = [
    Contact(firstName: "Kesley", lastName: "Ribeiro", email: "kesley.developer@icloud.com", city: "Goiânia", state: "Goiás", age: 22, experienceDuration: 4),
    Contact(firstName: "Higor", lastName: "Ribeiro", email: "hmr.1996@icloud.com", city: "Jussara", state: "Goiás", age: 20, experienceDuration: 2),
    Contact(firstName: "Fátima", lastName: "Luiza", email: "fatimaluiza@icloud.com", city: "Goiânia", state: "Goiás", age: 46, experienceDuration: 30)
]

print("\n---> Imperative Programming <---")
// Get just the name of the contacts into a separate array

var contactNameImp = [String]()
for contact in contacts { // for each
    contactNameImp.append(contact.firstName)
}

// Values returned
print(contactNameImp)

// Get just the age of the contacts into a separate array
// Imperative Programming

var contactNameImp2 = [Int]()
for contact2 in contacts { // for each
    contactNameImp2.append(contact2.age)
}

// Values returned
print(contactNameImp2)





print("\n---> FUNCTIONAL PROGRAMMING <---")
print("----> MAP <----\n")

let contactNames = contacts.map({ // Open closure
    
    //    contact in
    //    contact.firstName + " " + contact.lastName + " " + "\(contact.age)"
    
    
    // Return abbreviated
    return $0.firstName + " " + $0.lastName + " " + "\($0.age)"
    
}) // Close closure

// Show results
print(contactNames)





print("\n---> Imperative Programming <---")
// Filter the contacts whose age is above 20

func filterContacts(aboveAge age: Int) -> [Contact] {
    var filteredContacts = [Contact]()
    
    for contact in contacts {
        if contact.age > age {
            filteredContacts.append(contact)
        }
    }
    return filteredContacts
}

/*
 // Filter contacts with age > 20
 let contactsAbove20 = filterContacts(aboveAge: 20)
 print(contactsAbove20)
 */






print("\n---> FUNCTIONAL PROGRAMMING <---")
print("\n----> FILTER <----\n")

let contactsAbove20 = contacts.filter({ $0.age > 20})
print(contactsAbove20)





print("\n---> Imperative Programming <---")
// Find the cumulative value of age by all my contacts
let contactsAge = contacts.map({ return $0.age })

var sum  = 0
for age in contactsAge {
    sum = sum + age
}
print(sum)





print("\n---> FUNCTIONAL PROGRAMMING <---")
print("\n----> REDUCE <----\n")

let totalAgeByContacts = contactsAge.reduce(0, +)
print(totalAgeByContacts)





print("\n----> COMBINING <----\n")
// Combining all the 3 Higher Order Functions

// Find the total no of years spent by contacts who are age > 20
let totalDuration = contacts.filter({ $0.age > 20})
    .map({ return $0.experienceDuration})
    .reduce(0, +)

print(totalDuration)


