package backend;

public class Cart {
    private String username;
    private String book_id;
    private int amount;

    public Cart(String username, String book_id) {
        this.username = username;
        this.book_id = book_id;
        this.amount = 1;
    }

    public Cart(String username, String book_id, int amount) {
        this.username = username;
        this.book_id = book_id;
        this.amount = amount;
    }

    public String getUsername() {
        return username;
    }

    public String getBookId() {
        return book_id;
    }

    public int getAmount() {
        return amount;
    }
}
