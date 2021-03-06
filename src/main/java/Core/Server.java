package Core;

import spark.TemplateEngine;

import Controllers.*;

import static spark.Spark.get;
import static spark.Spark.staticFileLocation;

public class Server {

    private final TemplateEngine freeMarker;

    public Server(final TemplateEngine templateEngine){
        this.freeMarker = templateEngine;
    }

    public void start(){
        staticFileLocation("/public");
        IndexController indexControl = new IndexController(freeMarker);
        indexControl.start();

        HomeController homeControl = new HomeController(freeMarker);
        homeControl.start();

        PaymentController paymentControl = new PaymentController(freeMarker);
        paymentControl.start();

        ManagerHomeController manaHomeContrl = new ManagerHomeController(freeMarker);
        manaHomeContrl.start();

    }
}
