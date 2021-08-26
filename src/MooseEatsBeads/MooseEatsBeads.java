package MooseEatsBeads;

import javafx.application.Application;

import javafx.event.*;
import javafx.scene.*;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.scene.web.WebView;
import javafx.stage.*;

public class MooseEatsBeads extends Application{

	@Override
	public void start(Stage primaryStage) {

		WebView webview = new WebView();
		webview.getEngine().load("https://www.youtube.com/watch?v=A4B6-doaPMY");
		webview.setPrefSize(640, 390);
		
		Scene scene = new Scene(webview);
		
		primaryStage.setTitle("I am not sorry.");
		primaryStage.setScene(scene);
		primaryStage.show();
	
	}
	
	
	public static void main(String args[]) {
		
		launch(args);
	}

}
