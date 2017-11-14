//
//  NBTool.swift
//  NBProject_Swift
//
//  Created by scuser on 2017/11/14.
//
//

import UIKit


class NBTool: NSObject {
  
    
   class func autoString(text:NSString,font:CGFloat,width:CGFloat) -> CGSize {
        return NBTool.autoString(text: text, font: font, width: width, height: CGFloat(MAXFLOAT))
    }
    //MARK:计算文本高度的方法
   class func autoString(text:NSString,font:CGFloat,width:CGFloat,height:CGFloat) -> CGSize {
        let size = text.boundingRect(with: CGSize(width:width,height:height), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes:[NSFontAttributeName:UIFont.systemFont(ofSize: font)],context:nil).size;
        return size;
    }
    
    //TODO:随机一个值在min和max之间
   class func random(min:NSInteger,max:NSInteger) -> NSInteger {
        let randomNum:NSInteger = NSInteger(arc4random()) % (max - min+1) + min
        return randomNum;
    }
    class func isEmpty(obj:AnyObject) -> Bool {
        
        if obj is NSNull {
            return true
        }
        //如果是字符串
        if obj is NSArray {
          
            let _:NSArray = obj as! NSArray
            
            
        }
        
        if obj is NSString {
            
            let objStr:NSString = obj as! NSString
            
            if (objStr.length == 0) || (objStr.isEqual("null"))||(objStr.isEqual("(null)")){
                return true
            }else{
            return false
            }
        }
        if obj is NSNumber {//如果是数据类型
            if obj.floatValue == 0 {
                return true
            }else{
            return false
            }
        }
        
        return true
    }
    
}
