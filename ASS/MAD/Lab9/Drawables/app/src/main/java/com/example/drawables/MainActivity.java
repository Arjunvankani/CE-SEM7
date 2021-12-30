package com.example.drawables;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    TextView score1,score2;
    int mscore1,mscore2;
    ImageButton minus1,minus2,add1,add2;
    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {
        int nightMode= AppCompatDelegate.getDefaultNightMode();
        if(nightMode==AppCompatDelegate.MODE_NIGHT_YES){

            AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);
        }
        else {

            AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_YES);
        }
        return true;
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        int nightMode= AppCompatDelegate.getDefaultNightMode();
        if(nightMode==AppCompatDelegate.MODE_NIGHT_YES){
            menu.findItem(R.id.night_mode).setTitle(R.string.day_mode);
        }
        else {
            menu.findItem(R.id.night_mode).setTitle(R.string.night_mode);
        }
        return true;
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        score1=findViewById(R.id.score1);
        score2=findViewById(R.id.score2);
        minus1=findViewById(R.id.minus1);
        minus2=findViewById(R.id.minus2);
        add1=findViewById(R.id.plus1);
        add2=findViewById(R.id.plus2);
        mscore1= Integer.parseInt(score1.getText().toString());
        mscore2=Integer.parseInt(score2.getText().toString());
    }
    public void decreaseScore(View view) {
        int viewID=view.getId();
        switch (viewID){
            case R.id.minus1:
                mscore1--;
                score1.setText(String.valueOf(mscore1));
                break;
            case R.id.minus2:
                mscore2--;
                score2.setText(String.valueOf(mscore2));
        }
    }
    public void increaseScore(View view) {
        int viewID=view.getId();
        switch (viewID){
            case R.id.plus1:
                mscore1++;
                score1.setText(String.valueOf(mscore1));
                break;
            case R.id.plus2:
                mscore2++;
                score2.setText(String.valueOf(mscore2));
        }
    }
    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        outState.putInt("STATE_SCORE_1", mscore1);
        outState.putInt("STATE_SCORE_2",mscore2);
    }
    @Override
    protected void onRestoreInstanceState(@NonNull Bundle
                                                  savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        mscore1=savedInstanceState.getInt("STATE_SCORE_1");
        mscore2=savedInstanceState.getInt("STATE_SCORE_2");
        score1.setText(String.valueOf(mscore1));
        score2.setText(String.valueOf(mscore2));

}
}