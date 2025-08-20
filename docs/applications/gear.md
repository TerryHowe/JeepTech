---
title: "Gear and Tire Applet"
keywords: "Gear and Tire Calculator, JavaScript transmission calculator"
author: "Terry Howe"
description: "Calculate gear ratios and vehicle speeds for different tire sizes, transmission ratios, transfer cases, and ring and pinion configurations."
---

# Gear and Tire Applet

<div class="gear-calculator">
  <div class="input-row">
    <div class="input-group">
      <label for="tireSize">Tire Size</label>
      <input id="tireSize" type="text" placeholder="e.g. P215/75R15 or 33" aria-describedby="tireHelp">
      <div id="tireHelp" class="muted">Enter metric (e.g., P215/75R15) or English (e.g., 33") tire size</div>
    </div>
    <div class="input-group">
      <label for="ringPinion">Ring and Pinion Ratio</label>
      <input id="ringPinion" type="text" value="3.54" placeholder="e.g. 4.10 or 4.10:1" aria-describedby="ratioHelp">
      <div id="ratioHelp" class="muted">Enter gear ratio (e.g., 4.10 or 4.10:1)</div>
    </div>
  </div>

  <div class="transmission-section">
    <h4>Transmission Ratios</h4>
    <div class="transmission-grid">
      <div class="gear-input">
        <label for="gear1st">1st Gear</label>
        <input id="gear1st" type="text" value="6.32" placeholder="6.32">
      </div>
      <div class="gear-input">
        <label for="gear2nd">2nd Gear</label>
        <input id="gear2nd" type="text" value="3.50" placeholder="3.50">
      </div>
      <div class="gear-input">
        <label for="gear3rd">3rd Gear</label>
        <input id="gear3rd" type="text" value="2.50" placeholder="2.50">
      </div>
      <div class="gear-input">
        <label for="gear4th">4th Gear</label>
        <input id="gear4th" type="text" value="1.00" placeholder="1.00">
      </div>
      <div class="gear-input">
        <label for="gear5th">5th Gear</label>
        <input id="gear5th" type="text" value="0.75" placeholder="0.75">
      </div>
      <div class="gear-input">
        <label for="gearReverse">Reverse</label>
        <input id="gearReverse" type="text" value="7.32" placeholder="7.32">
      </div>
    </div>
  </div>

  <div class="input-row">
    <div class="input-group">
      <label for="transferCase">Transfer Case Low Range</label>
      <input id="transferCase" type="text" value="2.62" placeholder="e.g. 2.62" aria-describedby="tcHelp">
      <div id="tcHelp" class="muted">Enter low range ratio (high range assumed to be 1.0:1)</div>
    </div>
    <div class="input-group">
      <label for="units">Speed Units</label>
      <select id="units" aria-describedby="unitsHelp">
        <option value="mph">Miles per hour</option>
        <option value="kph">Kilometers per hour</option>
      </select>
      <div id="unitsHelp" class="muted">Choose speed output units</div>
    </div>
  </div>

  <div class="input-row">
    <div class="input-group">
      <label for="rpm">Engine RPM</label>
      <input id="rpm" type="text" value="2500" placeholder="2500" aria-describedby="rpmHelp">
      <div id="rpmHelp" class="muted">Engine RPM for speed calculations</div>
    </div>
    <div class="input-group" style="display: flex; align-items: end;">
      <button id="calcBtn" type="button">Calculate</button>
    </div>
  </div>
  
  <div id="msg" class="error" role="alert" style="display:none"></div>
  <div id="results" class="results" style="display:none">
    <h4>Speed Table</h4>
    <div id="speedTable"></div>
    <div class="crawl-ratio">
      <strong>Crawl Ratio: <span id="crawlRatio"></span></strong>
    </div>
  </div>
</div>

<style>
.gear-calculator { 
  max-width: 800px; 
  padding: 20px; 
  border: 1px solid #ccc; 
  border-radius: 8px; 
  background: #f9f9f9; 
  margin: 20px 0; 
}
.gear-calculator label { 
  display: block; 
  font-weight: 600; 
  margin-top: 8px; 
}
.gear-calculator input[type=text], .gear-calculator select { 
  width: 100%; 
  padding: 8px; 
  font-size: 16px; 
  box-sizing: border-box; 
}
.input-row { 
  display: flex; 
  gap: 20px; 
  margin-bottom: 16px; 
  flex-wrap: wrap; 
}
.input-group { 
  flex: 1; 
  min-width: 200px; 
}
.transmission-section {
  margin: 16px 0;
}
.transmission-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
  gap: 12px;
  margin-top: 8px;
}
.gear-input label {
  margin-top: 4px;
  font-size: 14px;
}
.gear-input input {
  padding: 6px;
  font-size: 14px;
}
.muted { 
  color: #555; 
  font-size: 14px; 
  margin-top: 4px; 
}
.error { 
  color: #b00020; 
  font-weight: 600; 
  margin-top: 10px; 
}
.results { 
  margin-top: 20px; 
  padding: 15px; 
  background: #fff; 
  border: 1px solid #ddd; 
  border-radius: 6px; 
}
.crawl-ratio {
  margin-top: 15px;
  padding: 10px;
  background: #e8f4f8;
  border-radius: 4px;
  text-align: center;
}
button { 
  padding: 10px 16px; 
  font-size: 16px; 
  border: 2px solid #ddd; 
  background: #fff;
  border-radius: 4px;
  cursor: pointer;
}
button:hover {
  background: #f0f0f0;
}
.speed-table {
  overflow-x: auto;
}
.speed-table table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
}
.speed-table th, .speed-table td {
  padding: 8px 12px;
  text-align: center;
  border: 1px solid #ddd;
}
.speed-table th {
  background: #f5f5f5;
  font-weight: 600;
}
.speed-table tr:nth-child(even) {
  background: #f9f9f9;
}
</style>

# User Guide

The document is a user guide for the Gear and Tire Applet. The first section describes general use of the applet and the other sections contain more specific information about tires, transmissions, transfer cases, and ring and pinion, The general section covers what the Gear and Tire Applet is and what it can be used for. It also covers general information on ratios and the input and output of the Gear and Tire Applet.

### What is the Gear and Tire Applet?

The gear and tire form is designed to assist you making gear and tire selections for your four wheel drive vehicle. Larger tires gain ground clearance, increase maximum fording depth, and increase the angles of departure and approach, but they often don't work well with OEM gearing. Auto manufactures build trucks for the street, which means they select high gearing for fast acceleration and better gas mileage. When larger tires are put on these trucks, the driver may find themselves burning through clutches because first gear is so high. Engine performance and gas milage may suffer because the engine is forced to work outside of it's optimal RPM ranges. Top speed on the highway will increase, but so will low speed on the trail.

There are two main motivations to regear, the first is to return the truck to the manufactures operating ranges to improve engine performance and decrease wear and tear on the clutch and transmission. The second is to increase off-road performance with lower gearing. Lower gearing allows the off-roader to go slower through obstacles giving the driver better control so there is less chance of vehicle damage and occupant injury. There is a penalty for low gears on top highway cruising speed. The gear and tire form is designed to allow the user to try different configurations and see what performance will be like for different configurations before going through an expensive gear swap.

### General Information on Gear Ratios

One important aspect of gear ratios is numerically large gears are the low ones. Gear ratios are normally stated in the form x.xx:1, e.g. 6.32:1. This translates mathematically to 1/6.32, and since 1/2 is more than 1/6, 6:1 is lower than 2:1. The ratio means that for every 6.32 revolutions from the input the output will rotate once. This happens to be granny low first gear on a Ford T-18 transmission. When you are in first with the T-18, the engine does 6.32 revolutions for every 1 revolution the transmissions outputs. Fourth gear on the T-18 is 1.00:1, so for every revolution of the engine, it outputs one revolution.

### Input for the Gear and Tire Applet

The Gear and Tire Applet takes as input your tire size, transmission ratios, transfer case low range, and ring and pinion.

The tire field will accept input in English or metric sizes. The entire metric size must be input to calculate diameter, but the prefix 'P' or 'LT' are optional. For example the tire size P225/75R15 could be entered without the 'P'. For English sizes, the gear and tire form is only interested in the diameter in inches. The rest is not needed, but if it is typed it will be ignored. For example '32x11.50R15LT M+S' can be just entered 32.

Input of Transmission ratios, transfer case low range, and ring and pinion all have the same basic form. The Gear and Tire Applet is looking for the ratios and ratios are commonly expressed in the form x.xx:1. To save some typing the ':1' part does not need to be entered. You can enter it if you like but, it will be ignored. If you have tooth counts, for ring and pinion for example, just divide the big number by the small. For example 41/10 ring and pinion translate to 4.10:1.

The user has the option to produce output in kilometers per hour or miles per hour. No output is produced until the 'calculate' button is pressed. This document is available by pressing the 'help' button.

### Output for the Gear and Tire Applet

When the calculate button is pressed output is created in both graphical and tabular form. The graph is a line graph with RPM on the x-axis ranging from 0 to 4000 RPM. The y-axis is either MPH or KPH depending on user input. MPH range from 0 to 80 MPH. KPH range from 0 to 120 KPH. Each transmission gear is printed out as a separate line in the graph first being red, second blue, third green, fourth black, and fifth yellow. A check box at the bottom of the graph allows the user to "shift" the transfer case into low range. The title of the graph gives the users tire size and ring and pinion ratio.

The tabular output is also produced each time the calculate button is pressed. The title on the tabular output indicates the units of output either KPH or MPH. It also indicates the users selection of tire and ring and pinion and allows the user to enter different RPMs to see the table at various engine outputs. Each row of the table represents a gear of the transmission first, second, third and so forth. The columns represent high and low range of the transfer case.

The crawl ratio, which is often used to compare gearing set ups, is also included in the tabular output. The crawl ratio represents compound low, or first gear of the transmission and low range of the transfer case. For example, many Wranglers have a first gear around 3.83:1, the transfer case low range is 2.72:1, and the axle ring and pinion is 3.07:1. This means the crawl ratio is 3.83*2.72*3.07 or around 32:1. Put some big tires on that Wrangler and it will be difficult to control on a technical trail. A crawl ratio around 60:1 is often good target.

There is more detailed help on tires, transmissions, transfer cases, and ring and pinion, see the special sections for these topics.

## Tires

As mentioned in the overview the tire input field will accept input in English or metric sizes. The entire metric size must be input to calculate diameter, but English sizes only require the diameter in inches to be entered. Sorry, the Gear and Tire Applet does not support old tire sizing conventions such has H78 etc. If you actually have tires this old, you'll have to break out the tape measure and input the diameter in inches.

This section covers the method metric tires are translated to inches and how tire size changes speed.

### How to Convert Metric Tire Sizes

Metric tire sizes are made up of four components: prefix, width, aspect ratio, and wheel size. It takes three of these components to calculate the diameter of the tire. It sure is not a very straight forward sizing convention.

The prefix is used to indicate general use of the tire. The tire input field trys to ignore the prefix and if your prefix causes an error, just don't input it. The Gear and Tire Applet currently will successfully ignore 'P' for passenger car and 'LT' for light truck. When in doubt, drop the prefix.

The width simply the width of the tire in mm. For example the tire size P215/75R15 has a width of 215mm.

The next component is the aspect ratio. The aspect ratio is the percentage of the width that makes up the sidewall of the tire. In the above example the aspect ratio is 75 or 75%, so the sidewall height is 75% of 215 or 161.25mm. If you want the diameter of the tire, you need to take into account that the diameter of the tire passes two sections of the side wall. This means the sidewall takes up 161.25*2 or 322.5mm of the diameter.

The next component is the wheel size. In the above example the wheel size is 15". If you convert the total sidewall into inches you get 322.5mm*0.03937in/mm or about 12.7". Add that to wheel size and you get the diameter 15"+12.7" is 27.7". So a P215/75R15 tire has a diameter of about 27.7".

### How Tire Sizes Effects Speed

The formula for circumference of a circle is used to calculate how tire sizes effect speed. To calculate the circumference of a circle the Gear and Tire Applet uses the classic formula 2(pi)r, or given the diameter it is simply the diameter times pi. This means in the above example a 27.7" tire has a circumference of 27.7(pi) or around 87". Every time the tire rotates once, the vehicle travels 87". This can be converted to miles or kilometers for calculations of speed given the number of engine revolutions per hour. Anyway looking at the simple formula d(pi) it is clear that a larger tire travels further for each revolutions since it has bigger circumferences. That is why when larger tires are swapped in, you go faster.

## Transmissions

The Gear and Tire Applet allows you to enter up to five speeds and a reverse gear ratio. If you have a three speed or don't have the reverse ratio, there is no need to input the extra information. If you aren't sure what transmission you have you can use the generalizations here to get numbers that probably will be very accurate give or take a few KPH/MPH.

### Generalizations About Manual Transmissions

Ratios for manual transmissions don't vary all that much. Most of the time first gear is around 4:1 unless it granny low truck transmission such as the T-18, NP435, SM465, SM420 etc. These transmissions have a first anywhere between 6.32:1 to 7.20:1. Generally, the final drive gear is straight through or 1.00:1 coupling the input shaft directly to the main shaft. I've never seen a three or four speed that didn't have a 1.00:1 final drive gear. Five speed transmissions have a 1.00:1 fourth and an overdrive. The overdrive fifth gear is typically around 0.75:1. So, when in doubt, use 4.00:1, 3.00:1, 2.00:1, 1.00:1 for a four speed.

### Generalizations About Automatic Transmissions

The author of this document is not particularly knowledgeable about automatic transmissions, but he is still willing to make some generalizations. Most automatics seem to have a first gear around 3:1 and final drive gear of 1:1. Overdrive automatics tend to have 0.75:1 overdrive.

## Tranfer Case

It wouldn't be four wheel drive without a transfer case. The transfer case transfers power from the transmission to the rear and front axles. Typically, the driver has 2 high, 4 high, neutral, and 4 low. The Gear and Tire Applet supports the standard two speed transfer cases. If you have a three speed transfer case, you'll have to enter the ratios separately.

High range is assumed to be 1:00:1 for 2 high and 4 high. Low range is input by the user. Low range is typically around 2.50:1.

## Ring and Pinion

The ring and pinion are located in the differential housing of the axle. The pinion takes input from the driveshaft and turns the ring. The ring spins the differential which turns the axle shafts. There are a fairly wide variety of ring and pinions ratios available anywhere from 2.73:1 to 6.50:1 depending on the model of the axle. Since transmission and transfer case ratios are fairly set, a change of ring and pinion is the easiest and least expensive way to modify the gearing of your 4x4.

Figuring out what ratio ring and pinion you have is not always easy. Depending on engine, transmission, and option package the manufacturer may have used any one of several ratios. The easiest way is to locate and try to read the tag on on the differential housing. Sometimes this tag is located on the differential housing cover, sometimes it is not. It may be a a code stamped in the housing that needs to be looked up in your technical service manual.

One sure fire way of determining your ratio is opening up the axle and taking a look. Often the ring is stamped with tooth count, ratio, and build date. Sometimes it isn't stamped, but you can still count the teeth yourself and divide ring teeth by pinion teeth to get the ratio.

An easier, but not as accurate method of determining your ratio is to jack one wheel off the ground and count the number of drive shaft rotations it takes to turn the tire one full rotation. Multiply this number by two and that is your ratio. If you have a looking or limited slip differential, you may find it difficult to rotate the tire by hand. If this is the case lift both tires off the ground and support the vehicle with jack stands to count rotations for one rotation of both tires.

One final note on ring and pinion, if you know the ratio of one axle the other should be the same give or take a few hundredths. So if you find a tag on the front, but nothing on the rear, go with the tag you found.

May 2, 1997

<script>
(function(){
  const $ = (id) => document.getElementById(id);
  const mmPerInch = 25.4;
  const inchToMile = 1.578283E-5;
  const minToHour = 60.0;

  // Parse tire size - supports both metric (e.g., P215/75R15) and English (e.g., 33)
  function parseTireSize(input) {
    const s = (input || '').trim().toUpperCase();
    
    // Try metric format first
    if (s.length > 8 && s.includes('/')) {
      return parseMetricTire(s);
    }
    
    // Try English format (simple diameter)
    return parseEnglishTire(s);
  }

  function parseMetricTire(input) {
    // Remove common prefixes and whitespace
    let cleaned = input.replace(/^\s*(P|LT)\s*/, '').replace(/\s+/g, '');
    
    // Accept forms like 235/75R15, 235/75-15, or 235\75R15
    const m = cleaned.match(/^(\d{3})[\\/\-](\d{2})[R\-]?(\d{1,2})$/);
    if (!m) {
      return null;
    }
    
    const widthMm = parseInt(m[1], 10);
    const aspect = parseInt(m[2], 10);
    const wheelIn = parseInt(m[3], 10);
    
    // Basic sanity checks
    if (widthMm < 100 || widthMm > 455) return null;
    if (aspect < 20 || aspect > 95) return null;
    if (wheelIn < 10 || wheelIn > 26) return null;
    
    // Calculate diameter: wheel + 2 * sidewall height
    const sidewallMm = widthMm * (aspect / 100);
    const sidewallIn = sidewallMm / mmPerInch;
    const diameterIn = wheelIn + 2 * sidewallIn;
    
    return {
      diameter: diameterIn,
      displayName: `${widthMm}/${aspect}R${wheelIn}`
    };
  }

  function parseEnglishTire(input) {
    // Look for diameter at start of string - handle formats like "33", "31x10.50R15", "32x11.50"
    let cleaned = input;
    
    // First extract just the diameter part before any 'x' or other separators
    const diameterMatch = cleaned.match(/^(\d+(?:\.\d+)?)/);
    if (!diameterMatch) return null;
    
    const diameter = parseFloat(diameterMatch[1]);
    if (isNaN(diameter) || diameter < 20 || diameter > 50) return null;
    
    return {
      diameter: diameter,
      displayName: `${diameter}"`
    };
  }

  // Parse ratio input - handles formats like "4.10", "4.10:1"
  function parseRatio(input) {
    if (!input || input.trim() === '') return null;
    
    let cleaned = input.trim();
    // Remove ":1" suffix if present
    if (cleaned.includes(':')) {
      cleaned = cleaned.substring(0, cleaned.indexOf(':'));
    }
    
    const ratio = parseFloat(cleaned);
    if (isNaN(ratio) || ratio <= 0 || ratio > 15) return null;
    
    return ratio;
  }

  // Format ratio for display
  function formatRatio(ratio) {
    return (Math.round((ratio + 0.0001) * 100) / 100).toString();
  }

  function calculate() {
    const msg = $('msg');
    const results = $('results');
    msg.style.display = 'none';
    results.style.display = 'none';

    // Get inputs
    const tireInput = $('tireSize').value;
    const ringPinionInput = $('ringPinion').value;
    const transferCaseInput = $('transferCase').value;
    const rpmInput = $('rpm').value;
    const unitsValue = $('units').value;

    // Parse tire size
    const tire = parseTireSize(tireInput);
    if (!tire) {
      msg.textContent = 'Please enter a valid tire size (e.g., P215/75R15, 33, or 31x10.50).';
      msg.style.display = 'block';
      return;
    }

    // Parse ring and pinion ratio
    const ringPinion = parseRatio(ringPinionInput);
    if (!ringPinion) {
      msg.textContent = 'Please enter a valid ring and pinion ratio (e.g., 4.10 or 3.73:1).';
      msg.style.display = 'block';
      return;
    }

    // Parse transfer case ratio
    const transferCase = parseRatio(transferCaseInput);
    if (!transferCase) {
      msg.textContent = 'Please enter a valid transfer case low range ratio (e.g., 2.62).';
      msg.style.display = 'block';
      return;
    }

    // Parse RPM
    const rpm = parseFloat(rpmInput);
    if (isNaN(rpm) || rpm <= 0 || rpm > 8000) {
      msg.textContent = 'Please enter a valid RPM value (e.g., 2500).';
      msg.style.display = 'block';
      return;
    }

    // Parse transmission ratios
    const gearIds = ['gear1st', 'gear2nd', 'gear3rd', 'gear4th', 'gear5th', 'gearReverse'];
    const gearNames = ['1st', '2nd', '3rd', '4th', '5th', 'Reverse'];
    const transmissionRatios = [];
    
    for (let i = 0; i < gearIds.length; i++) {
      const value = $(gearIds[i]).value.trim();
      if (value === '') {
        // Allow empty values for 5th gear (optional)
        if (i === 4) {
          transmissionRatios.push(null);
          continue;
        }
        msg.textContent = `Please enter a valid ${gearNames[i]} gear ratio.`;
        msg.style.display = 'block';
        return;
      }
      
      const ratio = parseRatio(value);
      if (!ratio) {
        msg.textContent = `Please enter a valid ${gearNames[i]} gear ratio (e.g., 3.50).`;
        msg.style.display = 'block';
        return;
      }
      transmissionRatios.push(ratio);
    }

    // Calculate speeds
    const unitMultiplier = unitsValue === 'kph' ? 1.609344 : 1.0;
    const unitLabel = unitsValue === 'kph' ? 'KPH' : 'MPH';
    
    // Base calculation: speed = (tireDiameter * π * rpm * 60 * units) / (transmission_ratio * transfer_case_ratio * ring_pinion_ratio)
    const baseCalc = tire.diameter * Math.PI * inchToMile * unitMultiplier * rpm * minToHour;
    const highRangeCalc = baseCalc / ringPinion; // High range (1.0:1 transfer case)
    const lowRangeCalc = baseCalc / (transferCase * ringPinion); // Low range

    // Build results table
    let tableHTML = `
      <div class="speed-table">
        <table>
          <thead>
            <tr>
              <th>Gear</th>
              <th>Ratio</th>
              <th>High Range (${unitLabel})</th>
              <th>Low Range (${unitLabel})</th>
            </tr>
          </thead>
          <tbody>
    `;

    for (let i = 0; i < transmissionRatios.length; i++) {
      const ratio = transmissionRatios[i];
      if (ratio === null) continue; // Skip empty 5th gear
      
      const highSpeed = Math.round(highRangeCalc / ratio);
      const lowSpeed = Math.round(lowRangeCalc / ratio);
      
      tableHTML += `
        <tr>
          <td>${gearNames[i]}</td>
          <td>${formatRatio(ratio)}</td>
          <td>${highSpeed}</td>
          <td>${lowSpeed}</td>
        </tr>
      `;
    }

    // Add transfer case ratios row
    tableHTML += `
      <tr style="border-top: 2px solid #666;">
        <td><strong>Transfer Case</strong></td>
        <td></td>
        <td><strong>1.0:1</strong></td>
        <td><strong>${formatRatio(transferCase)}:1</strong></td>
      </tr>
    `;

    tableHTML += `
          </tbody>
        </table>
      </div>
    `;

    // Calculate crawl ratio (1st gear * transfer case low * ring and pinion)
    const crawlRatio = Math.round(transmissionRatios[0] * transferCase * ringPinion);

    // Display results
    $('speedTable').innerHTML = tableHTML;
    $('crawlRatio').textContent = `${crawlRatio}:1`;
    results.style.display = 'block';
  }

  // Event listeners
  $('calcBtn').addEventListener('click', calculate);
  
  // Allow Enter key to trigger calculation from any input
  ['tireSize', 'ringPinion', 'transferCase', 'rpm', 'gear1st', 'gear2nd', 'gear3rd', 'gear4th', 'gear5th', 'gearReverse'].forEach(id => {
    $(id).addEventListener('keyup', function(e) {
      if (e.key === 'Enter') calculate();
    });
  });

  // Set default tire size to demonstrate functionality
  $('tireSize').value = 'P215/75R15';
})();
</script>

* * *