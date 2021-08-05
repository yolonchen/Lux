//
//  AttributeSting+Extension.swift
//  Lux
//
//  Created by 陈玉龙 on 2021/7/26.
//

import Foundation

public extension NSAttributedString {
    
    
    public func insertAttachmentAtHead(img:UIImage) -> NSAttributedString {
        return self.insertAttachment(img: img, index: 0)
    }
    
    public func insertAttachmentAtTail(img:UIImage) -> NSAttributedString {
        
        return self.insertAttachment(img: img, index: self.string.count)
    }
    
    public func insertAttachment(img:UIImage , index:Int) -> NSAttributedString {
        let attr:[NSAttributedString.Key:Any] = [.attachment : img]
        let attachment = NSTextAttachment.init()
        attachment.image = img
        attachment.bounds = CGRect.init(x: 0, y: -3, width: img.size.width, height: img.size.height)
        
        let attrString = NSAttributedString.init(attachment: attachment)
        
        let m_attrString = NSMutableAttributedString.init(attributedString: self)
        m_attrString.insert(attrString, at: index)
        return NSAttributedString.init(attributedString: m_attrString)
    }
}
