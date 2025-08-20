---
title: "Speedometer Gear Applet"
---
# Speedometer Gear Applet

This calculator determines the proper speedometer driven gear based on Jeep model, tire size, and ring and pinion. It is assumed that the Jeep has the stock speedometer and transfer case to perform this calculation. The program has been very accurate based on my research and experience, but I won't take any responsibility for your speeding tickets :-). Check the caveats at the end of the page.

<div class="card">
  <label for="jeepModel">Jeep Model</label>
  <select id="jeepModel" aria-describedby="modelHelp">
    <option value="0">'87+ Wrangler</option>
    <option value="1">'72-'86 CJ</option>
    <option value="2">'45-'71 CJ</option>
  </select>
  <div id="modelHelp" class="muted">Select your Jeep model for the appropriate calculation</div>

  <label for="tireSize">Tire Size</label>
  <input id="tireSize" type="text" placeholder="e.g. P215/75R15 or 33" aria-describedby="tireHelp">
  <div id="tireHelp" class="muted">Enter metric (e.g., P215/75R15) or English (e.g., 33") tire size</div>

  <label for="ringPinion">Ring and Pinion Ratio</label>
  <input id="ringPinion" type="text" value="3.54" placeholder="e.g. 4.10 or 4.10:1" aria-describedby="ratioHelp">
  <div id="ratioHelp" class="muted">Enter gear ratio (e.g., 4.10 or 4.10:1)</div>

  <div style="margin-top:12px">
    <button id="calcBtn" type="button">Calculate</button>
  </div>
  
  <div id="msg" class="error" role="alert" style="display:none"></div>
  <div id="results" class="results" style="display:none">
    <div class="row">
      <div>
        <div class="muted">Recommended Speedometer Gear</div>
        <div><strong><span id="gearTeeth"></span> tooth gear</strong></div>
      </div>
    </div>
    <div style="margin-top:8px">
      <div class="muted">Calculation Details</div>
      <div><span id="calcDetails"></span></div>
    </div>
  </div>
</div>

<style>
  .card { max-width: 560px; padding: 16px; border: 1px solid #ccc; border-radius: 8px; background: #f9f9f9; }
  label { display:block; font-weight:600; margin-top:8px; }
  input[type=text], select { width:100%; padding:8px; font-size:16px; box-sizing:border-box; }
  .row { display:flex; gap:16px; flex-wrap:wrap; }
  .row > div { flex:1 1 220px; }
  .muted{ color:#555; }
  .error{ color:#b00020; font-weight:600; }
  .results { margin-top: 10px; padding: 10px; background: #fff; border: 1px solid #ddd; border-radius:6px; }
  button { padding:8px 14px; font-size:16px; border: 2px solid #ddd; }
</style>

## Simple Speedometer Recalibrations

Jeepers are perpetually modifying their vehicles. Sometimes, these modifications make speedometer recalibration necessary. Any change in the ring and pinion or tire size can throw off the speedometer. The simple way to calculate the proper speedometer driven gear is by setting up a ratio. The ratio should look like this:

    newGear * newTire = oldGear * oldTire

    or

    newGear/newRingAndPinion = oldGear/oldRingAndPinion

Solve this ratio for newGear to determine the proper tooth count for the speedometer gear. For example, if you had 225/75R15 tires (approximately 28.2" in diameter) and you swap in 33s, you would set up the following ratio:

    newGear * 33 = 27 * 28.2

    newGear = (27*28.2) / 33

    newGear = 23.07  (23 tooth gear)

The calculation for a ring and pinion swap from 2.73:1 to 4.27:1 would look like:

    newGear/4.27 = 27/2.73

    newGear = (27/2.73) * 4.27

    newGear = 42.23 (42 tooth gear)

Determining the old speedometer driven gear is very simple. All that needs to be done is remove the speedometer cable (typically with a pair of pliers) and remove the speedometer gear housing which is normally held in by one bolt or his threaded into the transfer case tail housing. Newer Jeeps come with an electronic speedometer sending unit that uses a wire attached to the tail housing instead of a cable.

## Complex Speedometer Recalibrations

If you are like me, you may have swapped in a used transfer case from the junk yard, regeared your axles, and put on new tires before you decided to recalibrate your speedometer. A simple ratio doesn't cut it anymore, so you have calculate the right speedometer gear at a lower level. A Jeep engineer might use a formular similar to this one to calculate the speedometer driven gear:

    DrivenGear =  (DriveGear*DiffGear) / (TireDiameter*MilesPerInch*Pi*SpeedoRevMile)

The DrivenGear turns the speedometer cable. It is driven by the DriveGear inside the transfer case. The DiffGear is the ring and pinion ratio (e.g. 4.10 for 4.10:1). In this formula, it is assumed the TireDiameter is in inches and this is convert this to miles. The diameter of the tire in miles is multiplied by Pi (3.14 or so) to get the circumference. Every speedometer should have a sticker or writing on the back with the number of revolutions of input it expects per mile. This is typically around 1000, in fact CJs with the Dana 300 and the Dana 20 transfer case have a speedometer that expects 1000 revolutions of input per mile.

## Easy Speedometer Recalibrations

If all this seems too complex, get yourself to a speedometer shop. A good speedo shop can recalibrate your speedometer quickly and inexpensively. I know hard core gear heads that don't bother recalibrating their speedometers since it is so cheap and easy to go to the speedometer shop.

## Sources

Some of the information to put together this page was obtained from Dan Barbieri and others on the Jeep mailing list. I also referred to Bruce Bowling's speedometer page [ https://devserve.cebaf.gov/~bowling/speedo1.md ](https://devserve.cebaf.gov/~bowling/speedo1.md)

## Caveats

The information for '45-'71 CJs is solely based on a transfer case I have from a '49 CJ-3A. It is a dual lever Dana 18 and it looks to me like the parts in the speedometer area are the same for all the early civilian and military Jeeps. The program might not work for later single lever Dana 18 equipped CJs. Also, I have no data on the speedometer gears used with the Quadra-Trac CJs in the late 70s and early Wranglers equipt with the NP207. I assume they are the same, but it is likely, particularly with the Quadra-Trac, that the drive gear may have a different tooth count.

April 25, 1997

<script>
(function(){
  const mmPerInch = 25.4;
  const $ = (id) => document.getElementById(id);

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

  // Parse ring and pinion ratio
  function parseRatio(input) {
    if (!input || input.trim() === '') return null;
    
    let cleaned = input.trim();
    // Remove ":1" suffix if present
    if (cleaned.includes(':')) {
      cleaned = cleaned.substring(0, cleaned.indexOf(':'));
    }
    
    const ratio = parseFloat(cleaned);
    if (isNaN(ratio) || ratio <= 0 || ratio > 10) return null;
    
    return ratio;
  }

  function calculate() {
    const msg = $('msg');
    const results = $('results');
    msg.style.display = 'none';
    results.style.display = 'none';

    // Get inputs
    const modelIndex = parseInt($('jeepModel').value);
    const tireInput = $('tireSize').value;
    const ratioInput = $('ringPinion').value;

    // Parse tire size
    const tire = parseTireSize(tireInput);
    if (!tire) {
      msg.textContent = 'Please enter a valid tire size (e.g., P215/75R15, 33, or 31x10.50).';
      msg.style.display = 'block';
      return;
    }

    // Parse ring and pinion ratio
    const ratio = parseRatio(ratioInput);
    if (!ratio) {
      msg.textContent = 'Please enter a valid ring and pinion ratio (e.g., 4.10 or 3.73:1).';
      msg.style.display = 'block';
      return;
    }

    // Calculate speedometer gear using model-specific formulas
    let multiplier;
    let modelName;
    switch (modelIndex) {
      case 0: // '87+ Wrangler
        multiplier = 268.0;
        modelName = "'87+ Wrangler";
        break;
      case 1: // '72-'86 CJ
        multiplier = 270.0;
        modelName = "'72-'86 CJ";
        break;
      case 2: // '45-'71 CJ
        multiplier = 81.0;
        modelName = "'45-'71 CJ";
        break;
    }

    const gearTeeth = Math.round(multiplier * ratio / tire.diameter);
    
    // Display results
    $('gearTeeth').textContent = gearTeeth.toString();
    $('calcDetails').textContent = `A ${gearTeeth} tooth speedo gear is required with ${ratio}:1 ring and pinion and ${tire.displayName} tires on a ${modelName}.`;
    results.style.display = 'block';
  }

  // Event listeners
  $('calcBtn').addEventListener('click', calculate);
  $('tireSize').addEventListener('keyup', function(e) {
    if (e.key === 'Enter') calculate();
  });
  $('ringPinion').addEventListener('keyup', function(e) {
    if (e.key === 'Enter') calculate();
  });

  // Set default to demonstrate functionality
  $('tireSize').value = 'P215/75R15';
})();
</script>

* * *