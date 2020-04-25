class Dequeue extends Spis {
    Elem tail;

    public void push(Elem e) {
        if (head == null) head = tail = e;
        else super.push(e);
    }

    // Добвляет элемент в конец списка.
    public void append(Elem e) {
        if (tail == null) head = tail = e;
        else {
            tail.next = e;
            tail = e;
            length++;
        }
    }

    // Удаляет элемент из конца списка.
    public Elem popright() {
        Elem temp = head;
        if (head == tail) {
            head = tail = null;
            return temp;
        }
        else {
            while (temp.next != tail) temp = temp.next;
            Elem e = temp.next;
            temp.next = null;
            tail = temp;
            return e;
        }
    }
}