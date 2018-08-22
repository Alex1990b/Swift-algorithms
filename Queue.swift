import UIKit

//О́чередь — абстрактный тип данных с дисциплиной доступа к элементам «первый пришёл — первый вышел»
//(FIFO, англ. first in, first out).
//Добавление элемента (принято обозначать словом enqueue — поставить в очередь) возможно лишь в конец очереди
//Выборка — только из начала очереди (что принято называть словом dequeue — убрать из очереди), при этом выбранный элемент из очереди удаляется.

//Используется в Grand Central Dispatch (GCD) в Swift при создание serial очереди

//Типовые операции

//enqueue — добавление в конец очереди.
//dequeue — удаление с начала очереди.
//head - голова очереди
//tail - хвост очереди


struct Queue<T> {
    
    private var elements = [T]()
    
    var size: Int {
        return elements.count
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var head: T? {
        return elements.first
    }
    
    var tail: T? {
        return elements.last
    }
    
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    
    mutating func dequeue() {
        if !isEmpty {
            elements.removeFirst()
        }
    }
}


