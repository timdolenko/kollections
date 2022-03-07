# Kollection

Collection convenience extensions from Kotlin for Swift.

## Examples

```swift
let greetings = ["Hi", "Привет", "Hallo", "Привіт"]
```

### Sort

```swift 
greetings.sorted { $0.count < $0.count }
```

Kollection:
```swift 
greetings.sortedBy { $0.count } // ["Hi", "Hallo", "Привет", "Привіт"]

greetings.sortedByDescending { $0.count } // ["Привет", "Привіт", "Hallo", "Hi"]
```

### All and Any

```swift 
greetings.allSatisfy { $0.count > 3 }
```

Kollection:
```swift 
greetings.any { $0.count == 2 } // true

greetings.any { $0.count == 7 } // false

greetings.all { $0.count >= 2 } // true
```

### Associate By & With
```swift 
greetings.associateWith { $0.count } ==
[
    "Hi": 2,
    "Привет": 6,
    "Hallo": 5,
    "Привіт": 6
]
```

```swift 
greetings.associateBy { $0.hash } ==
[
    13282270830741: "Hallo",
    5175370168390695: "Привіт",
    753535: "Hi",
    5175370167839430: "Привет",
]
```
