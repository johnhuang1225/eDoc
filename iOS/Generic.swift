
/**
 * 去除重複的泛型方法
 */
func distinct<T: Equatable>(source: [T]) -> [T] {
	var result = [T]()
	for item in source {
		if !contains(result,item) {
			result.append(item)
		}
	}
	return result
}



let words = ["cat","chichen","fish","dog","mouse","guinea pig","monkey"]
let result = words.map({ (str: String) -> Character in
	return Character( str.substringToIndex(advance(str.startIndex,1)) )
})

let unique = distinct(result).sorted{$0<$1}
println(unique)

