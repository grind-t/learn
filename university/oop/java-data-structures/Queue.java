class Queue extends Spis {   
    Elem tail; 

    // Добавляет элемент в конец очереди.
    public void push(Elem e) {
        if (tail == null) head = tail = e;
        else {
            tail.next = e;
            tail = e;
            length++;
        }
    }
}