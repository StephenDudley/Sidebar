import Foundation

enum SDModule: String, CustomStringConvertible, CaseIterable
{
    case curly, larry, moe, shemp
    
    var description: String { rawValue.capitalized }
}
