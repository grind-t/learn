class Node {
    private String name;
    private int year;
    private float rate;

    public Node(String name, int year, float rate) {
        this.name = name;
        this.year = year;
        this.rate = rate;
    }

    public static Node fromString(String data) {
        String[] s = data.split("\\s+");
        return new Node(s[0], Integer.parseInt(s[1]),  Float.parseFloat(s[2]));
    }

    public void print() {
        System.out.print("(" + name + ", " + year + ", " + rate + ")");
    }
}