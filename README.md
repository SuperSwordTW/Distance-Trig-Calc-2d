##2D Distance Calculating with Trigonometry [Optimized]
## Info
When calculating a distance between two points, we usually use the Pythagorean theorem. $sqrt(a^2+b^2)=c$.
But squaring in Minecraft can cause some problems, especially when we are scaling things up
Because it can easily run out of a scoreboard space, which is an int(21474836473).
Instead of relying on the Pythagorean theorem, we can use Trigonometry to solve the problem.

![triangle](https://user-images.githubusercontent.com/63050705/223461489-503eaedc-f7fc-437e-86e1-9686210dd232.png)

Draw a right triangle from two points. Then $tan^-1({a \over b})$ represents theta. Since $sin(theta)$= $a \over c$.
So, $a \over {sin(tan^-1({a \over b}))}$ would equal $c$.

Now that we have the formula, we need to calculate it in Minecraft.

$sin$ can be calculated in a few ways. Such as by using a marker at the origin (0,0,0) and setting its rotation, then tp it ^ ^ ^1, so the opposite side length is divided by 1 (hypotenuse)
would result in a sin value. Although, as you can see, maneuvering markers is not efficient, we can obeserve the domain, which is 0°~90°. Therefore, we can just create a table for every angle that would be needed. With 2 decimal places of accuracy, it's a 9000-element table.

$tan^-1$, or inverse tangent, can be calculated just by using the `facing x y z` and then getting the rotation since $tan^-1$ is the angle.

## Efficiency

The efficiency of this method is fairly high, as the benchmark would average around 120,000 commands.
![Screenshot_23](https://github.com/SuperSwordTW/Distance-Trig-Calc/assets/63050705/27f35da3-36ed-4816-b275-dbddde5191aa)

which, if compared to the entity display method by Triton, benchmark would average around 90,000 commands.
`Note that this is only for 2D distance, using this method sure can calculate 3D distance as well, but the effciency would drop by a lot.
So if you plan on calculating 3D distance, use the entity display method. `
Their post:
![Screenshot_23](https://github.com/SuperSwordTW/Distance-Trig-Calc/assets/63050705/86546315-ceda-422a-8ef7-8976cf04b10e)


Of course, using Newton rasphon on the scoreboard to calculate the square root is still the fastest, but the problem with squaring would be a major problem, as your inputs cannot reach over 10000, or else it would overflow.


## Implementation
Install the datapack into the corresponding folder.
`distance:load` function is required to place it in load, or you can manually run it once in the game.
```
scoreboard players set .dx distance [value]
scoreboard players set .dz distance [value]
```
Set the change in x, and z on the scoreboard.
***dx*** and ***dz*** value must be ***Positive***
```
function distance:start
scoreboard players get .out distance
```
This will get you the result distance with 2-digit accuracy.

## Disadvantage
Since getting 2-digit accuracy requires scaling up the numbers. So any numbers that is above 100,000 would overflow, but why would you need such high number anyway.
If you incounter real high numbers, you can always use one decimal place instead.
$sin$ and $tan^-1$ values saved in a few digits. Therefore, if the inputs are extremely high numbers, the results would be inaccurate but mostly in the second decimal place.
Overall, it's some minor errors that shouldn't effect it's usage.
