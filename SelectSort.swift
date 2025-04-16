//  SelectSort.swift
//
//  Created by Val I on 2025-04-11.
//  Version 1.0
//  Copyright (c) 2025 Val I. All rights reserved.
//
//  The SelectSort program makes a random array.
//  it displays an array of 10 integers,
//  then displays the array in numerical order using selection sort,

import Foundation

// Bubble sort function
func selectSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for i in 0..<sortedArray.count {
        var minIndex = i
        for j in (i + 1)..<sortedArray.count {
            if sortedArray[j] < sortedArray[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            let temp = sortedArray[i]
            sortedArray[i] = sortedArray[minIndex]
            sortedArray[minIndex] = temp
        }
    }
    return sortedArray
}

let MAXARRSIZE = 10
var randomArray = Array(repeating: 0, count: MAXARRSIZE)

// Populate the array with random numbers
for i in 0..<MAXARRSIZE {
    randomArray[i] = Int.random(in: 1...100)
}

// Print the original array
print("The original array is \(randomArray)")

// Sort the array
randomArray = selectSort(randomArray)
// Print the sorted array
print("The sorted array is \(randomArray)")
git 