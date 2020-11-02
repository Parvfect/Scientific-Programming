import UIKit



func square_a_function(function: (Double) -> Double, argument: Double) -> Double {
    let x = function(argument)
    return x*x
}

func square(x:Double) -> Double{
    return x*x
}


func x_then_y(x:(Double) -> Double, y:(Double)->Double, z:Double) -> Double{
    return x(y(z))
    
}


func exponent(number:Double, power:Int) -> Double{
    for _ in 1...power{
        number*number
    }
    return number
}




struct Calculus{
    
    
    func differentiate(function: (Double) -> Double, argument:Double) -> Double{
        //Change in function value for x and small change in x vs small change
        let delta = 0.00000000001
        let change = function(argument+delta) - function(argument)
        return change/delta
        
    }
    
    func five_point_derivative(function: (Double) -> Double, argument: Double) -> Double{
        let delta = 0.000000001
        let change = 8*function(argument + delta) - 8*function(argument - delta) + function(argument - 2*delta) - function(argument + 2*delta)
        return change/delta
    }
    
    func integrate(function: (Double) -> Double, lower:Double, higher:Double) -> Double{
        
        var sum:Double = 0.0
        let delta = 0.00001
        for _ in stride(from: lower, to: higher, by: delta){
            
            sum += function(delta)
            
        }
        
        return sum
    }
}