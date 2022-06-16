package examples.UI;

import com.intuit.karate.junit5.Karate;

public class RunnerUI {

        @Karate.Test
        Karate testUsers() {
            return Karate.run("UI").relativeTo(getClass());
        }
    }


