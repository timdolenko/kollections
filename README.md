# Kollection

Provides convinience extensions for collection types available in Kotlin.

## Examples

```swift
let greetings = ["Hi", "Привет", "Hallo", "Привіт"]
```

### Sort

```swift 

// Swift:
greetings.sorted { $0.count < $0.count }

// Kollection:

// ["Hi", "Hallo", "Привет", "Привіт"]
greetings.sortedBy { $0.count }

// ["Привет", "Привіт", "Hallo", "Hi"]
greetings.sortedByDescending { $0.count }
```

### All and Any

```swift 

// Swift:
greetings.allSatisfy { $0.count > 3 }

// Kollection:

// true
greetings.any { $0.count == 2 }

// false
greetings.any { $0.count == 7 }

// true
greetings.all { $0.count >= 2 }
```
