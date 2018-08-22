
import UIKit


//Концепция стека используется классом UINavigationController для моделирования контроллеров видов в его иерархии навигации. Вы вызываете метод pushViewController(_:animated:) класса UINavigationController для добавления контроллера вида на стек навигации, а метод popViewControllerAnimated(_:) для удаления контроллера вида из стека навигации. Стек - полезная модель коллекции, когда вам нужен строгий принцип “последний на вход - первый на выход”.


struct Stack<T> {
    
    var elements = [T]()
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var size: Int {
        return elements.count
    }
    
    var top: T? {
        return elements.last
    }
    
    mutating func push(element: T) {
        elements.append(element)
    }
    
    mutating func pop() {
        if !isEmpty {
        elements.removeLast()
        }
    }
}

var stack = Stack<Int>()
stack.push(element: 5)
stack.push(element: 6)
stack.push(element: 8)
stack.push(element: 10)
stack.pop()
print(stack.elements)



