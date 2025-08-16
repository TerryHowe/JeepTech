# Metric Tire Conversion

::: card
Enter P-metric tire size

::: {#help .muted}
Prefixes like P or LT are optional and ignored. Formats like 235/75R15 or 235/75-15 are accepted.
:::

::: {style="margin-top:10px"}
Calculate
:::

::: {#msg .error role="alert" style="display:none"}
:::

::: {#results .results style="display:none"}
::: row
<div>

::: muted
Section width
:::

<div>

**[]{#widthIn} in** ([]{#widthMm} mm)

</div>

</div>

<div>

::: muted
Overall diameter
:::

<div>

**[]{#diameterIn} in**

</div>

</div>
:::

::: {.row style="margin-top:8px"}
<div>

::: muted
Sidewall height (one side)
:::

<div>

**[]{#sidewallIn} in**

</div>

</div>

<div>

::: muted
Wheel diameter
:::

<div>

**[]{#wheelIn} in**

</div>

</div>
:::
:::

[Formula: diameter = wheel_diameter + 2 × (width_mm × aspect/100 ÷ 25.4). Width (in) = width_mm ÷ 25.4.]{.small}
:::

This application takes a metric tire size and returns the size in inches. The purpose is to answer questions like, \"I have LT235/75R15s on my truck, how much clearance will 31s buy me?\" and \"I know 30s will fit my Jeep without a lift, but will an LT235/75R15?\" All this can be done without breaking out the tape measure! This page now uses JavaScript (no Java applet required).

## How to Convert Metric Tire Sizes

Metric tire sizes are made up of four components: prefix, width, aspect ratio, and wheel size. It takes three of these components to calculate the diameter of the tire. It sure is not a very straight forward sizing convention.

The prefix is used to indicate general use of the tire. The input parser ignores prefixes like `P` for passenger car and `LT` for light truck. When in doubt, drop the prefix.

The width is the section width of the tire in millimeters. For example, the tire size P215/75R15 has a width of 215 mm.

The next component is the aspect ratio. The aspect ratio is the percentage of the width that makes up the sidewall of the tire. In the above example the aspect ratio is 75 or 75%, so the sidewall height is 75% of 215 or 161.25 mm. If you want the diameter of the tire, you need to take into account that the diameter of the tire passes two sections of the side wall. This means the sidewall takes up 161.25 × 2 or 322.5 mm of the diameter.

The next component is the wheel size. In the above example the wheel size is 15\". If you convert the total sidewall into inches you get 322.5 mm × 0.03937 in/mm or about 12.7\". Add that to wheel size and you get the diameter: 15\" + 12.7\" ≈ 27.7\". So a P215/75R15 tire has a diameter of about 27.7\".
