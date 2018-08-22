import UIKit

//О́чередь — абстрактный тип данных с дисциплиной доступа к элементам «первый пришёл — первый вышел»
//(FIFO, англ. first in, first out).
//Добавление элемента (принято обозначать словом enqueue — поставить в очередь) возможно лишь в конец очереди
//Выборка — только из начала очереди (что принято называть словом dequeue — убрать из очереди), при этом выбранный элемент из очереди удаляется.

//Используется в Grand Central Dispatch (GCD) в Swift при создание serial очереди


struct Queue<T> {
    
    private var elements = [T]()
    
    var size: Int {
        return elements.count
    }
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    //голова очереди
    var head: T? {
        return elements.first
    }
    
    //хвост очереди
    var tail: T? {
        return elements.last
    }
    
    //добавить в очередь
    mutating func enqueue(element: T) {
        elements.append(element)
    }
    
    //удалить из очереди
    mutating func dequeue() {
        if !isEmpty {
            elements.removeFirst()
        }
    }
}


