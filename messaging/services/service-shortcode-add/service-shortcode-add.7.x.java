import com.twilio.Twilio;
import com.twilio.rest.messaging.v1.service.ShortCode;

public class Example {
    // Find your Account Sid and Token at twilio.com/console
    public static final String ACCOUNT_SID = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    public static final String AUTH_TOKEN = "your_auth_token";

    public static void main(String[] args) {
        // Initialize the client
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        String pathServiceSid = "MG2172dd2db502e20dd981ef0d67850e1a";
        String shortCodeSid = "SC3f94c94562ac88dccf16f8859a1a8b25";
        ShortCode shortCode = ShortCode.creator(pathServiceSid, shortCodeSid)
                                       .create();
    }
}
