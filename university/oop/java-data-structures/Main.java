class Main {
    public static void main(String[] args) {
        // Переделать для работы со всеми классами.
        Stack s = new Stack();
        Queue q = new Queue();
        Dequeue d = new Dequeue();
        Spis[] spiski = {s, q, d};
        for (Spis spis : spiski) {
            try {
                spis.init("stud.txt");
                System.out.println(spis.getClass().getName() + ":");
                spis.print();
            }
            catch (Exception e) {
                System.out.println(e);
            }
        }

        System.out.println("\nDequeue.pop():");
        d.popright();
        d.print();
    }
}