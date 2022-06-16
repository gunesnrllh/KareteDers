package examples.API;

import com.intuit.karate.junit5.Karate;

public class ApiRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("ApiSpotify").relativeTo(getClass());
    }
}
