//


import Foundation
import Observation

@Observable
class AllAvenger {
    var avengers: [Avenger] = [
        Avenger(name: "Hulk", imgName: "hulk", rating: 3),
        Avenger(name: "Iron Man", imgName: "ironman", rating: 2),
        Avenger(name: "Superman", imgName: "superman", rating: 1),
    ]
    
    func updateRating(for avenger: Avenger, rating: Int) {
        if let index = avengers.firstIndex(where: { $0.id == avenger.id }) {
            avengers[index].rating = rating
        }
    }
}

struct Avenger: Identifiable {
    var id = UUID()
    var name: String
    var imgName: String
    var rating: Int
}
