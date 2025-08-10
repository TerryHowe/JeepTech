---
title: "Speedometer Gear Applet"
---

# Speedometer Gear Applet
<H4>by [Terry L. Howe]()</H4>
<APPLET CODE="Speedo.class" WIDTH=450 HEIGHT=175>
</APPLET>
This applet calculates the proper speedometer driven gear based on Jeep
model, tire size, and ring and pinion.  It is assumed that the Jeep is
has the stock speedometer and transfer case to perform this calculation.
The program has been very accurate based on my research and experience,
but I won't take any responsibility for your speeding tickets :-).  Check
the caveats at the end of the page.
## Simple Speedometer Recalibrations
Jeepers are perpetually modifying their vehicles.  Sometimes, these
modifications make speedometer recalibration necessary.  Any change
in the ring and pinion or tire size can throw off the speedometer.
The simple way to calculate the proper speedometer driven gear is
by setting up a ratio.  The ratio should look like this:
newGear * newTire = oldGear * oldTire
or
newGear/newRingAndPinion = oldGear/oldRingAndPinion
</PRE>
Solve this ratio for newGear to determine the proper tooth count for the
speedometer gear.  For example, if you had 225/75R15 tires (approximately
28.2" in diameter) and you swap in 33s, you would set up the following
ratio:
newGear * 33 = 27 * 28.2
newGear = (27*28.2) / 33
newGear = 23.07  (23 tooth gear)
</PRE>
The calculation for a ring and pinion swap from 2.73:1 to 4.27:1 would look
like:
newGear/4.27 = 27/2.73
newGear = (27/2.73) * 4.27
newGear = 42.23 (42 tooth gear)
</PRE>
Determining the old speedometer driven gear is very simple.  All that needs
to be done is remove the speedometer cable (typically with a pair of pliers)
and remove the speedometer gear housing which is normally held in by one bolt
or his threaded into the transfer case tail housing.  Newer Jeeps come with
an electronic speedometer sending unit that uses a wire attached to the
tail housing instead of a cable.
## Complex Speedometer Recalibrations
If you are like me, you may have swapped in a used transfer case from the
junk yard, regeared your axles, and put on new tires before you decided to
recalibrate your speedometer.  A simple ratio doesn't cut it anymore, so
you have calculate the right speedometer gear at a lower level.  A Jeep
engineer might use a formular similar to this one to calculate the
speedometer driven gear:
DrivenGear =  (DriveGear*DiffGear) / (TireDiameter*MilesPerInch*Pi*SpeedoRevMile)
</PRE>
The DrivenGear turns the speedometer cable.  It is driven by the
DriveGear inside the transfer case.  The DiffGear is the ring and pinion ratio
(e.g. 4.10 for 4.10:1).  In this formula, it is assumed the TireDiameter is in
inches and this is convert this to miles.    The diameter of the tire in miles
is muliplied by Pi (3.14 or so) to get the circumference.  Every speedometer
should have a sticker or writing on the back with the number of revolutions
of input it expects per mile.  This is typically around 1000, in fact CJs
with the Dana 300 and the Dana 20 transfer case have a speedometer that
expects 1000 revolutions of input per mile.
## Easy Speedometer Recalibrations
If all this seems to complex, get yourself to a speedometer shop.  A good
speedo shop can recalibrate your speedometer quickly and inexpensively.
I know hard core gear heads that don't bother recalibrating their speedometers
since it is so cheap and easy to go to the speedometer shop.
## Sources
Some of the inforamation to put together this page was obtained from Dan
Barbieri and others on the Jeep mailing list.  I also refered to Bruce
Bowling's speedometer page
[http://devserve.cebaf.gov/~bowling/speedo1.html](http://devserve.cebaf.gov/~bowling/speedo1.html)
## Caveats
The information for '45-'71 CJs is solely based on a transfer case I have
from a '49 CJ-3A.  It is a dual lever Dana 18 and it looks to me like the
parts in the speedometer area are the same for all the early civilian and
military Jeeps.  The program might not work for later single lever Dana 18
equipt CJs.  Also, I have no data on the speedometer gears used with the
Quadratrac CJs in the late 70s and early Wranglers equipt with the NP207.
I assume they are the same, but it is likely, particularly with the Quadratrac,
that the drive gear may have a different tooth count.  If you have any
information, please send me an email.  Thanks.
April 25, 1997
<HR>