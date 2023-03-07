# Distance Calculating with Trigonometry
## Info
When calculating a distance from 2 points, we usually use pythagorean theorem. sqrt(a^2+b^2)=c.
But sqaring in Minecraft can cause some problem esspecially when we are scaling things up
Because it can easily run out of a scorebaord space, which is a int.
Instead of relying on pythagorean theorem, we can use Trigonometry to solve the problem.

![triangle](https://user-images.githubusercontent.com/63050705/223461489-503eaedc-f7fc-437e-86e1-9686210dd232.png)

Draw a right triangle from 2 points. Then $tan^-1({a \over b})$ represents theta. Since $sin(theta)$= $a \over c$.
So, $a \over {sin(tan^-1({a \over b}))}$ would equal to $c$.
Now we have the formula, we just need to calculate it in Minecraft.
$sin$ can be calculated by using a marker at the origin(0,0,0) and set it's rotation, then tp it ^ ^ ^1, so the opp. side length devided by 1(hypotenuse)
would result in the sin value.
$tan^-1$, or inverse tangent can be calculated by setting the marker's x position, then position it's z coord to 1 and make it face the origin. Now the rotation value would be the tan^-1 value.

## Implementation
Install the datapack into the corresponding folder.
```
scoreboard players set dx distance [value]
scoreboard players set dy distance [value]
scoreboard players set dz distance [value]
```
Set the change in x, y, z with scoreboard.
***dx*** and ***dz*** value must be ***Positive***
Leave y in 0 if you want to calculate 2d distance.
```
scoreboard players get .out distance
```
This will get you the result distance, with 2 digit accuracy.

## Disadvantage
As sin and tan^-1 value only have a few digites accuracy. Therefore, if the inputs are extreme high numbers, the results would have some inaccuracy.
