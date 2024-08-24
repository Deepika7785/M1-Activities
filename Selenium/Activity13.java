import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class SeleniumActivity {
    public static void main(String[] args) {
        // Set the path for the ChromeDriver executable
        System.setProperty("webdriver.chrome.driver", "path/to/chromedriver");

        // Initialize WebDriver (ChromeDriver in this case)
        WebDriver driver = new ChromeDriver();

        try {
            // Open the browser and navigate to the URL
            driver.get("https://v1.training-support.net/selenium/tables");

            // Get and print the title of the page
            String pageTitle = driver.getTitle();
            System.out.println("Page Title: " + pageTitle);

            // Find the number of rows in the first table
            WebElement table = driver.findElement(By.xpath("//table[@id='firstTable']"));
            int numberOfRows = table.findElements(By.xpath(".//tr")).size();
            System.out.println("Number of Rows: " + numberOfRows);

            // Find the number of columns in the first table
            int numberOfColumns = table.findElements(By.xpath(".//tr[1]/td")).size();
            System.out.println("Number of Columns: " + numberOfColumns);

            // Find and print all cell values in the third row of the table
            System.out.println("Cell values in the third row:");
            WebElement thirdRow = table.findElement(By.xpath(".//tr[3]"));
            for (WebElement cell : thirdRow.findElements(By.xpath(".//td"))) {
                System.out.print(cell.getText() + " ");
            }
            System.out.println();

            // Find and print the cell value at the second row, second column
            WebElement cellValue = driver.findElement(By.xpath("//table[@id='firstTable']/tbody/tr[2]/td[2]"));
            System.out.println("Cell value at second row, second column: " + cellValue.getText());

        } finally {
            // Close the browser
            driver.quit();
        }
    }
}
