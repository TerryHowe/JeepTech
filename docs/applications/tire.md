---
title: "Metric Tire Conversion"
keywords: "Metric Tire Conversion Applet, JavaScript tire size calculator"
author: "Terry Howe"
description: "Convert P-metric tire sizes into inches (diameter and width)."
---

<style>
  .tire-calculator { max-width: 560px; padding: 16px; border: 1px solid #ccc; border-radius: 8px; background: #f9f9f9; margin: 20px 0; }
  .tire-calculator label { display:block; font-weight:600; margin-top:8px; }
  .tire-calculator input[type=text]{ width:100%; padding:8px; font-size:16px; box-sizing:border-box; }
  .tire-calculator .row { display:flex; gap:16px; flex-wrap:wrap; }
  .tire-calculator .row > div { flex:1 1 220px; }
  .tire-calculator .muted{ color:#555; }
  .tire-calculator .error{ color:#b00020; font-weight:600; }
  .tire-calculator .results { margin-top: 10px; padding: 10px; background: #fff; border: 1px solid #ddd; border-radius:6px; }
  .tire-calculator button { padding:8px 14px; font-size:16px; border: 2px solid #ddd; }
  .tire-calculator small code { background:#fff; padding:2px 4px; border:1px solid #eee; border-radius:4px; }
</style>

# Metric Tire Conversion

<div class="tire-calculator">
  <label for="tireInput">Enter P-metric tire size</label>
  <input id="tireInput" type="text" placeholder="e.g. P215/75R15 or LT235/85R16 or 235/75-15" aria-describedby="help">
  <div id="help" class="muted">Prefixes like P or LT are optional and ignored. Formats like 235/75R15 or 235/75-15 are accepted.</div>
  <div style="margin-top:10px">
    <button id="calcBtn" type="button">Calculate</button>
  </div>
  <div id="msg" class="error" role="alert" style="display:none"></div>
  <div id="results" class="results" style="display:none">
    <div class="row">
      <div>
        <div class="muted">Section width</div>
        <div><strong><span id="widthIn"></span> in</strong> (<span id="widthMm"></span> mm)</div>
      </div>
      <div>
        <div class="muted">Overall diameter</div>
        <div><strong><span id="diameterIn"></span> in</strong></div>
      </div>
    </div>
    <div class="row" style="margin-top:8px">
      <div>
        <div class="muted">Sidewall height (one side)</div>
        <div><strong><span id="sidewallIn"></span> in</strong></div>
      </div>
      <div>
        <div class="muted">Wheel diameter</div>
        <div><strong><span id="wheelIn"></span> in</strong></div>
      </div>
    </div>
  </div>
  <small class="muted">Formula: diameter = wheel_diameter + 2 × (width_mm × aspect/100 ÷ 25.4). Width (in) = width_mm ÷ 25.4.</small>
</div>

This application takes a metric tire size and returns the size in inches. The purpose is to answer questions like, "I have LT235/75R15s on my truck, how much clearance will 31s buy me?" and "I know 30s will fit my Jeep without a lift, but will an LT235/75R15?" All this can be done without breaking out the tape measure! This page now uses JavaScript (no Java applet required).

## How to Convert Metric Tire Sizes

Metric tire sizes are made up of four components: prefix, width, aspect ratio, and wheel size. It takes three of these components to calculate the diameter of the tire. It sure is not a very straight forward sizing convention.

The prefix is used to indicate general use of the tire. The input parser ignores prefixes like `P` for passenger car and `LT` for light truck. When in doubt, drop the prefix.

The width is the section width of the tire in millimeters. For example, the tire size P215/75R15 has a width of 215 mm.

The next component is the aspect ratio. The aspect ratio is the percentage of the width that makes up the sidewall of the tire. In the above example the aspect ratio is 75 or 75%, so the sidewall height is 75% of 215 or 161.25 mm. If you want the diameter of the tire, you need to take into account that the diameter of the tire passes two sections of the side wall. This means the sidewall takes up 161.25 × 2 or 322.5 mm of the diameter.

The next component is the wheel size. In the above example the wheel size is 15". If you convert the total sidewall into inches you get 322.5 mm × 0.03937 in/mm or about 12.7". Add that to wheel size and you get the diameter: 15" + 12.7" ≈ 27.7". So a P215/75R15 tire has a diameter of about 27.7".

<script>
(function(){
  const mmPerInch = 25.4;
  const $ = (id) => document.getElementById(id);

  function parsePMetric(input){
    // Normalize input
    const s = (input || '').trim().toUpperCase();
    // Remove common prefixes and whitespace
    const cleaned = s.replace(/^\s*(P|LT)\s*/,'').replace(/\s+/g,'');
    // Accept forms like 235/75R15, 235/75-15, 235-75R15
    const m = cleaned.match(/^(\d{3})[\/-](\d{2})[R-]?(\d{2})$/);
    if(!m){
      return null;
    }
    const widthMm = parseInt(m[1],10);
    const aspect = parseInt(m[2],10);
    const wheelIn = parseInt(m[3],10);
    // Basic sanity checks
    if(widthMm < 100 || widthMm > 455) return null;
    if(aspect < 20 || aspect > 95) return null;
    if(wheelIn < 10 || wheelIn > 26) return null;
    return { widthMm, aspect, wheelIn };
  }

  function round2(x){ return Math.round(x * 100) / 100; }

  function calculate(){
    const input = $('tireInput').value;
    const msg = $('msg');
    const res = $('results');
    msg.style.display = 'none';
    res.style.display = 'none';

    const parsed = parsePMetric(input);
    if(!parsed){
      msg.textContent = 'Please enter a P-metric size like 235/75R15, P215/70R16, or LT265/75-16.';
      msg.style.display = 'block';
      return;
    }
    const { widthMm, aspect, wheelIn } = parsed;
    const widthIn = widthMm / mmPerInch;
    const sidewallMm = widthMm * (aspect / 100);
    const sidewallIn = sidewallMm / mmPerInch;
    const diameterIn = wheelIn + 2 * sidewallIn;

    $('widthMm').textContent = widthMm.toString();
    $('widthIn').textContent = round2(widthIn).toFixed(2);
    $('sidewallIn').textContent = round2(sidewallIn).toFixed(2);
    $('wheelIn').textContent = wheelIn.toString();
    $('diameterIn').textContent = round2(diameterIn).toFixed(2);
    res.style.display = 'block';
  }

  $('calcBtn').addEventListener('click', calculate);
  $('tireInput').addEventListener('keyup', function(e){
    if(e.key === 'Enter') calculate();
  });

  // Example default to demonstrate
  $('tireInput').value = 'P215/75R15';
})();
</script>