# Kollection

Provides collection convinience extensions from Kotlin.

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
