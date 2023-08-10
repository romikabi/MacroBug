import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct AddCaseMacro: PeerMacro {
    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        ["case addedCase"]
    }
}

@main
struct MacroBugPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        AddCaseMacro.self,
    ]
}
