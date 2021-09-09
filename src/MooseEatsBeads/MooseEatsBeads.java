package MooseEatsBeads;


// JavaFx imports
import javafx.application.Application;
import javafx.event.*;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.scene.paint.Color;
import javafx.scene.web.WebView;
import javafx.stage.*;

public class MooseEatsBeads extends Application{

	@Override
	public void start(Stage primaryStage) {

		Stage secondaryStage = new Stage();
		
		WebView webview = new WebView();
		webview.getEngine().load("https://www.youtube.com/watch?v=A4B6-doaPMY");
		webview.setPrefSize(640, 390);
		
		VBox vbox = new VBox();
		Label lbl = new Label("thing");
		
		vbox.getChildren().addAll(lbl);
		
		
		vbox.getChildren().addAll(webview);

		Scene scene = new Scene(vbox, 400,350);
		
		secondaryStage.setTitle("I am not sorry.");
		secondaryStage.setScene(scene);
		secondaryStage.show();
	
	}
	
	
	public static void main(String args[]) {
		
		launch(args);
	}

}
