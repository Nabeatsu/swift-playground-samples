extension Optional where Wrapped == String {
    static func +(_ lhs: String?,  _ rhs: String?) -> String {
        let left = lhs ?? ""
        let right = rhs ?? ""
        return left + right
    }
}


let a: String? = "Hello"
let b: String? = nil
print(a + b)
let c: String? = "Hello"
let d: String = "hoge"
print(c + d)