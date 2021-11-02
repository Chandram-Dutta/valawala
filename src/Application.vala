/*
 * SPDX-License-Identifier: MIT
 * SPDX-FileCopyrightText: 2021 Chandram Dutta <chandramdutta2004.com>
 */

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
        var label = new Gtk.Label("Hello World Again!!");
        main_window.add(label);
        main_window.show_all();
    }
    public static int main (string[] args) {
        return new MyApp ().run (args);
    }
}