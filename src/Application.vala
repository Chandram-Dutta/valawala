public class MyApp : Gtk.Application{
    public MyApp(){
        Object(
            application_id: "com.github.Chandram-Dutta.valawala",
            flags: ApplicationFlags.FLAGS_NONE
        );

    }

    protected override void activate(){
        var main_window = new Gtk.ApplicationWindow(this){
            default_height = 300,
            default_width = 400,
            title ="Hello World"
        };
        var button_hello = new Gtk.Button.with_label("Click Me!!"){
            margin = 12
        };
        button_hello.clicked.connect(()=> {
            button_hello.label = "Hello World!";
            button_hello.sensitive = false;
        });
        main_window.add(button_hello);
        main_window.show_all();
    }
    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}