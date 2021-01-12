import Cocoa

class SDSidebarViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate
{
    func numberOfRows(in tableView: NSTableView) -> Int
    {
        SDModule.allCases.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView?
    {
        guard let columnId = tableColumn?.identifier else { return nil }
        let cellView = tableView.makeView(withIdentifier: columnId, owner: self) as? NSTableCellView
        
        cellView?.textField?.stringValue = SDModule.allCases[row].description
        
        return cellView
    }
}
