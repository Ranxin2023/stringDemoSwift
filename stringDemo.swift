class StringDemo{
    var s:String
    var sArray:[Character]
    init(_ s:String){
        self.s=s
        self.sArray=Array(s)
        print("the initial array is \(self.s)")
    }
    func accessCharByUsingOffset(_ index:Int)->Character{
        print("use s.index(s.startIndex, offsetBy:index) to access:")
        return self.s[self.s.index(self.s.startIndex, offsetBy: index)]
    }
    func accessCharByArray(_ index:Int)->Character{
        print("use sArray[index] to access:")
        return self.sArray[index]
    }
    func charAt(_ index:Int)->Character{
        return s[self.s.index(self.s.startIndex, offsetBy: index)]
    }
    
    func substring(_ start:Int, _ end:Int)->String{
        let startIdx=self.s.index(s.startIndex, offsetBy:start)
        let endIdx=self.s.index(s.startIndex, offsetBy:end)
        return String(self.s[startIdx..<endIdx])
    }
    func findASCII(_ index:Int)->Int{
        return Int(sArray[index].unicodeScalars.first!.value)
    }
}

func main(){
    let s=StringDemo("abcdeca")
    print("substring(2, 6) is \(s.substring(2, 6))")
    print("character at 3 is \(s.accessCharByUsingOffset(3))")
    print("ascii of character at 3 is \(s.findASCII(3))")
}

main()