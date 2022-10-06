package com.namnh;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:com/namnh/suite/sort-suite.feature").relativeTo(getClass());
    }
}
