import MacroBug

enum Foo {
    // Without at least one normal case the enum is considered unpopulated.
    case foo

    @AddCase
    enum Bar {}

    // Macro expansion:
    // case addedCase
}

func fooBar(_ foo: Foo) {
    switch foo {
    case .foo:
        break
    case .addedCase:
        break
    }
}
