//
//  ViewController.swift
//  SwiftHighOrderFunctionDemo
//
//  Created by Raghavendra Dattawad on 11/2/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//


//Higher Order Functions in Swift 3.0 —
//Map,
//filter,
//reduce and
//flatMap!


import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
   // 1) Map ///
       // Loops over a collection and applies the same operation to each element in the collection.
        
      //  Normal Way
    
     //Let’s assume we need to multiply each item by 2 in an array called numberArray.
      
        let numberArray = [1,2,3,4,5]
        
        var emptyArray:[Int] = []
        
        for numb in numberArray{
            
          //  emptyArray.append(numberArray * 2)
        }
      
        
        ///// Using map  1st way ///
        let newArray = numberArray.map{$0 * 2}
        print("after mapping",newArray)
        
        
        /// 2nd way //
        
        let newArray2 =  numberArray.map{value in value * 2}
        
        
        print("after mapping 2nd way",newArray2)
        
       
        
        
        //2)////Filter ////
       // Loops over a collection and returns an array that contains elements that meet a condition.
        
        
///Normal way ///
        
        
        
        let numbers = [1,2,3,4,5,6,7,8,9,10]
        
        
        var evenNumbArray:[Int] = []
        
        for numb in numbers {
            
            
            if numb % 2 == 0 {
                
                evenNumbArray.append(numb)
                
            }
            print("even number",evenNumbArray)
            
        }
        
    /// using mutating function in filter
        
        let newnumberArray = [1,2,3,4,5,6,7,8,9,10]
        
      let evenArray =  newnumberArray.filter {$0 % 2  == 0}
        
        print("using fiter %", evenArray)
    
        
    
    //3)/////Reduce ///
        ///Combines all items in a collection to create a single value.//
        
        /// Normal way ///
        
        let oneToFive = [1,2,3,4,5]
        var sumIs:Int = 0
        for num in oneToFive {
            
             sumIs += num
         }
        print("after sum" ,sumIs)
        
        //// by using reduce //
        
        
        let oneToTen = [1,2,3,4,5,6,7,8,9,10]
        ///The two parameters in reduce function are a starting value and a function respectively.
        //The function takes a running total and an element of the array as parameters, and returns a new running total.
        
        let sum =  oneToTen.reduce(0,{$0 + $1})
        
        
        print("using reduce ", sum)
        
       // 4)flatMap
        
       // When implemented on sequences : Flattens a collection of collections.
        
       // we have two arrays within an array that we would like to combine into a single array. How would we accomplish this? Probably with another For-In loop:
        
    /// Normal
        
        let arrayInArray = [[1,2,3],[4,5,6]]
        
        let empArray:[Int] = []
        
        for array in arrayInArray{
            
            emptyArray += array
        }
        
        print("emp Array ",emptyArray)
        
   
    
 
        /// flatMap //
        
        let flatMapArrayInArray = [[1,2,3],[4,5,6]]
        
        let getFlatMapArray = flatMapArrayInArray.flatMap{$0}
        print("using flat map comblined array ",getFlatMapArray)
    
    
    }

 
}

//Q: >    Why Use Higher Order Functions?




//These simplistic examples above sum up the reasons why we should use higher order functions in place of more commonly used methods. They help us:
//Read and understand complex functional programming
//Write more elegantly and maintainable code that has better readability
//Improve our Swift language skills
