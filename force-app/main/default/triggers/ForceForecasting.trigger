trigger ForceForecasting on User (after insert) {
    for (User userInLoop : Trigger.new) {
        userInLoop.ForecastEnabled = false;
    }
}