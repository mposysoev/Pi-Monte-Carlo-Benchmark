

let numberOfIterations = 1000000

let getRandomArray n = 
    let rnd = System.Random()
    List.init n (fun _ -> rnd.NextDouble ())

let xs = getRandomArray numberOfIterations
let ys = getRandomArray numberOfIterations


let isCircle x y = x*x + y*y < 1.0

let checkBool array1 array2 = (array1, array2) ||> List.map2 (fun x y -> isCircle x y)

let sumBools input = input |> Seq.cast |> Seq.filter id |> Seq.length

let resultOfCounter = sumBools (checkBool xs ys)

let theResult = 4.0 * float(resultOfCounter) / float(numberOfIterations)
printfn "%A" theResult