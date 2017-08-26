/*
     Practice algorithms
     Sorting
     Sorted Merge: Given two sorted arrays, A and B, where A has a large enough capacity at the end to hold B. Write a method to merge B into A in sorted order.
*/

func merge(a: [Int], b: [Int]) -> [Int] {
    var mergedA = a
    mergedA += b
    var indexA = a.count - 1
    var indexB = b.count - 1
    var indexMerged = a.count + b.count - 1
    while indexB >= 0 {
        if indexA >= 0 && a[indexA] > b[indexB] {
            mergedA[indexMerged] = a[indexA]
            indexA -= 1
        } else {
            mergedA[indexMerged] = b[indexB]
            indexB -= 1
        }
        indexMerged -= 1
    }
    return mergedA
}

merge(a: [1, 2, 3], b: [4, 5, 6])
merge(a: [16, 17, 18], b: [10, 11, 12])
