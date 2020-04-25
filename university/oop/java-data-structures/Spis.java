import java.io.*;
import java.util.Scanner;

public class Spis {
    Elem head; // Начальный элемент.
    int length; // Длина списка.

    public Spis() {}

    // Добавляет элемент в начало списка.
    public void push(Elem e) {
        if (e == null) return;

        e.next = head;
        head = e;
        length++;
    }

    // Удаляет элемент из начала списка.
    public Elem pop() {
        if (head == null) return null;
        Elem e = head;
        head = e.next;
        length--;
        return e;
    }

    public void init(String filepath) throws Exception {
        Scanner scan = new Scanner(new FileReader(filepath));
        int i = 0;

        while (scan.hasNextLine()) {
            Node n = Node.fromString(scan.nextLine());
            if (this.getClass().getName().equals("Dequeue") && i % 2 == 0) {
                ((Dequeue)this).append(new Elem(n));
            }
            else push(new Elem(n));
            i++;
        }

        scan.close();
    }

    // Распечатка значений.
    public void print() {
        Elem temp = head;
        System.out.print("[ ");
        while (temp != null){
            temp.print();
            System.out.print(" ");
            temp = temp.next;
        }
        System.out.println("]");
    }
}