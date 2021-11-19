
## Todo

* ✅ complete thread fit testing
* ✅ hops and barley icons
* ✅ parameterize the icon
* steal from this makefile: https://github.com/revarbat/snappy-reprap/blob/master/Makefile
* prep for publishing:
  * img renders
  * description
  * ?
 
## Printing notes

* Printer: Elegoo Neptune 2s (Ender 3 variant)
* Nozzle: 0.4mm
* Layer Height: 0.2mm
* Material: PLA, 195C nozzle, 60C bed, 95% flow
* Other: 4 layer walls (1.6mm), infill 25% cubic

Not sure how others manage to print threads that fit, but on my setup the original was unworkably tight. Added a "slop" factor to the included threads lib (thanks Dan Kirshner). 0.5mm slop for the 3/8" faucet thread and 1.0mm slop for the top 3/4" thread worked well (yes, I know I'm evil for mixing units!)



