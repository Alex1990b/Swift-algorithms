

import UIKit

//Двусвязная очередь (жарг. дэк, дек от англ. deque — double ended queue; двухсторонняя очередь, очередь с двумя концами структура данных, в которой элементы можно добавлять и удалять как в начало, так и в конец.

//Типовые операции

//enqueue — добавление в конец очереди.
//enqueueFront — добавление в начало очереди.
//dequeueBack — выборка с конца очереди.
//dequeueFront — выборка с начала очереди.
//peekFront - голова очереди
//peekBack - хвост очереди


 struct Deque<T> {
    
    private var elements = [T]()
    
     var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var size: Int {
        return elements.count
    }
    
    var peekFront: T? {
        return elements.first
    }
    
    var peekBack: T? {
        return elements.last
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    
     mutating func enqueueFront(element: T) {
        elements.insert(element, at: 0)
    }
    
     mutating func dequeueFront()  {
        if !isEmpty {
            elements.removeFirst()
        }
    }
    
     mutating func dequeueBack()  {
        if !isEmpty {
            elements.removeLast()
        }
    }
}
