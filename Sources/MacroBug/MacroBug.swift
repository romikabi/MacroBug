@attached(peer, names: named(addedCase))
public macro AddCase() = #externalMacro(module: "MacroBugMacros", type: "AddCaseMacro")
