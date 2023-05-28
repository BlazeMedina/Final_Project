// Get data on activationBut click
function getValues() {
  // Create an array to store the values of all inputs.
  var values = [];

  // Create variable Numbers for input elements of type=number
  var numbers = document.querySelectorAll("input[type=number]");

  // Loop through the numbers and add their values to the array.
  for (var i = 0; i < numbers.length; i++) {
    values.push(Number(numbers[i].value));
  }

  // Create variable radios for input elements of name=propType
  var radios = document.getElementsByName('propType');

    // Loop through the radios and add their values to the array.
  for (var i = 0; i < radios.length; i++) {
      if (radios[i].checked) {
          values.push(1);
      } else {
          values.push(0);
      }
  }
  return values;
}



// Event Listeners for the buttons.  They clear the contents of the webpage then call on the buildCharts function 
/// Activation button
document.getElementById("activationBut").addEventListener("click", function(){
    console.log("Activation button pressed");
    var args = getValues();
    console.log(args);

    document.getElementById("main").innerHTML='<img src="static/images/gears_in_head.gif" alt="Thinking">';
    setTimeout(splash, 3000);

    function splash(){
      document.getElementById("main").innerHTML='<img src="static/images/prediction_splash_3.png" alt="Drum roll" style="width: 900px; height: 400px;">';
      setTimeout(function(){predict(args);}, 5000);
    }
    //create function predict() to fit model with features 
    function predict(model_features){

      //..example features to test with
      let input_w =  [471400.0,3,3,2245,0.92,0,0,0,0,0,1,0]
      let input_d =  [560700.0,3,3,2322.0,0.120,0,0,0,0,0,1,0]

      // perform predition with pure Javascript code
      let raw_pred = score(model_features);
      let pred = Math.round(raw_pred[1]);
      console.log("Prediction results:",pred);

      // Display images depending on result of predict()
      if (pred == 0){
        document.getElementById("main").innerHTML='<img src="static/images/durham_tp_img.png" alt="Durham County" style="width: 300px; height: 350px;" >';
      } else if (pred == 1){
        document.getElementById("main").innerHTML='<img src="static/images/wake_img.jpg" alt="Wake County" style="width: 300px; height: 350px;" >';
      } else {
        document.getElementById("main").innerHTML='We had a problem predicting which county the property resides in. :-(';
      }
    };
});

/// Project Summary button 
document.getElementById("summaryBut").addEventListener("click", function(){
  console.log("Summary button pressed");
  document.getElementById("main").innerHTML='<iframe width="900" height="550" frameborder="0" scrolling="no" src="https://docs.google.com/document/d/e/2PACX-1vSQDt1tI_6yxKykMS1eFoWHlmMWeg256Yya0HC4VaJoBRzVcASLRpe5RhjYqYHa4CVg6gPYRMEqy7Dc/pub?embedded=true"></iframe>';
});

/// Display Sample Data
document.getElementById("sampleBut").addEventListener("click", function(){
  console.log("Sample button pressed");
  document.getElementById("main").innerHTML='<iframe width="900" height="550" frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRc8aA7OlRit6w4LB9LpXJ9VKhUtpwuLVEsyKjPDenXp4BT2twRBvxbb2g3lDpDOPp97afcXrvLIwiN/pubhtml?gid=0&single=true"></iframe>';
});

///Display Explanation of Machine Learning
document.getElementById("mlBut").addEventListener("click", function(){
  console.log("ML button pressed");
  document.getElementById("main").innerHTML='<iframe width="900" height="550" frameborder="0" src="https://docs.google.com/document/d/e/2PACX-1vTVCIvvQ4v9_gTvUswIAKu4FfLunutayul7jIdEd5y1X37Da5uilExomKFRxUazR1oKAK51f_G5VyPL/pub?embedded=true"></iframe>';
});

/// Display the Data Analysis 
document.getElementById("plotBut").addEventListener("click", function(){
  console.log("Data Analysis button pressed");
  document.getElementById("main").innerHTML='<iframe width="900" height="550" frameborder="0" src="https://docs.google.com/document/d/1z9IEtpArfomnUayZPK-kTHdTtCDp2gLEjPMIF0UAnmc/edit?usp=sharing"></iframe>';

});

/// Information About the Team
document.getElementById("teamBut").addEventListener("click", function(){
  console.log("Team button pressed");
  document.getElementById("main").innerHTML='<iframe width="900" height="550" frameborder="0" src="https://docs.google.com/document/d/e/2PACX-1vShLkaqKox03nJDQBMBF8tgro3fuyCLo_LglUGqbzNoUIWr6Ica3hQ9zioy5EfH7MnUlMimR0-AdF72/pub?embedded=true"></iframe>';
});
