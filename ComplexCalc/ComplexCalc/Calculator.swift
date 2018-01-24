//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs;
    }
    
    func add(_ numbers: [Int]) -> Int {
        var total: Int = 0;
        for number in numbers {
            total += number;
        }
        return total;
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 + rhs.0, lhs.1 + rhs.1);
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var total: [String: Int] = ["x": 0, "y": 0];
        total["x"] = lhs["x"]! + rhs["x"]!;
        total["y"] = lhs["y"]! + rhs["y"]!;
        return total;
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs;
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1);
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        var total: [String: Int] = ["x": 0, "y": 0];
        total["x"] = lhs["x"]! - rhs["x"]!;
        total["y"] = lhs["y"]! - rhs["y"]!;
        return total;
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs;
    }
    
    func multiply(_ numbers: [Int]) -> Int {
        var total: Int = 1;
        for number in numbers {
            total *= number;
        }
        return total;
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs;
    }
    
    func count(_ numbers: [Int]) -> Int {
        return numbers.count;
    }
    
    func avg(_ numbers: [Int]) -> Int {
        var total: Int = 0;
        for number in numbers {
            total += number;
        }
        return total / numbers.count;
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs);
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var total: Int = beg;
        for number in args {
            total = op(total, number);
        }
        return total;
    }
}

