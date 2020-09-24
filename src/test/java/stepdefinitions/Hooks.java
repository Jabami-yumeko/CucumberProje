package stepdefinitions;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import utilities.Driver;

public class Hooks {

    @Before
    public void setUp(){
        System.out.println("setup calisti");
    }

    // TestNG deki @AfterMethod gibi calisir
    // her senaryodan sonra calisir

    @After
    public void tearDown(Scenario scenario){
        System.out.println("tearDown calisti");

        final byte[] screenshot = ((TakesScreenshot) Driver.getDriver()).getScreenshotAs(OutputType.BYTES);

        // eger senaryonun sonucu FAILED ise , ekran goruntusunu rapora ekleyebiliriz.
        if (scenario.isFailed()){
            scenario.embed(screenshot, "image/png");
        }
    }
}
