import Vapor

extension Droplet {
    func setupRoutes() throws {
        post("sort") { req in
            // get array (from body) and check if its not empty
            guard let array = req.json?.array, !array.isEmpty
                else { return "Error: no data" }
            
            let intArray = array.flatMap { $0.int }
            
            // check that all values were Ints
            guard array.count == intArray.count else { return "Error: invalid data" }

            let sortedArray = SortBrain.sort(type: Int.self, array: intArray, algorithm: .merge)
            let result = sortedArray.flatMap { JSON($0) }
            
            guard result.count == sortedArray.count else { return "Error: Sorting Failed" }
            
            return JSON(result)
        }
        
        try resource("posts", PostController.self)
    }
}
