import UIKit

class fileManagement
{
    class func faiCasotto(nomeFile: String, valore: String) -> String{
        
        var answer: String = nomeFile+" e "+valore;
        return answer;
    }
    
    
    
    
    class func leggi(nomeFile: String) -> String
    {
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(nomeFile);
        
        
        var text = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil);
        return text!;
    }
    
    
    class func scrivi(nomeFile: String, valore: String)
    {
        let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as! [String];
        let dir = dirs[0];
        let path = dir.stringByAppendingPathComponent(nomeFile);
        
        
        valore.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
        
    }
}