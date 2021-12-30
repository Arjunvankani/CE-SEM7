package com.example.andriodlab21;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.text.InputType;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    EditText user,pass;
    TextView output;
    CheckBox checkBox;
    Button button;
    private String Password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        user = (EditText) findViewById(R.id.user);
        pass = (EditText) findViewById(R.id.pass);
        output = (TextView) findViewById(R.id.output);
        checkBox =  (CheckBox) findViewById(R.id.checkBox);
        button = (Button) findViewById(R.id.button);

        checkBox.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                if(checkBox.isChecked()){
                    pass.setInputType(InputType.TYPE_CLASS_TEXT);

                }else{
                    pass.setInputType(InputType.TYPE_CLASS_TEXT|InputType.TYPE_TEXT_VARIATION_PASSWORD);
                }

            }
        });


            button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                output.setText("User Name : \t "+user.getText() + "\n" + "Password : \t " + pass.getText());
            }
        });
    }
}