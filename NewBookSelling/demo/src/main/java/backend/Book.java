package backend;

public class Book {

    private String id;
    private String title;
    private int price;
    private String link_img;
    private String author;
    private String description;
    private String category;

    public Book(String id, String title, int price, String link_img, String author, String description, String category) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.link_img = link_img;
        this.author = author;
        this.description = description;
        this.category = category;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getLink() {
        return link_img;
    }

    public void setLink(String link_img) {
        this.link_img = link_img;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
