open System

let InCircle x y =
    x*x + y*y < 1.0

let GetRandomPoint (rng : Random) =
    rng.NextDouble(), rng.NextDouble()

let CheckOnePoint counter rng =
    let x,y = GetRandomPoint rng

    match InCircle x y with
    | true -> counter + 1
    | false -> counter

let CalculatePi numberOfIterations =
    let rng = new Random()

    let rec CalculatePi' numberOfIterations counter =
        match numberOfIterations with
        | 0 -> counter
        | _ -> CalculatePi' (numberOfIterations - 1) (CheckOnePoint counter rng)

    let totalCounter = CalculatePi' numberOfIterations 0

    4. * double(totalCounter) / double(numberOfIterations)

let numberOfIterations = 1000000
let result = CalculatePi numberOfIterations
printfn "%A" result