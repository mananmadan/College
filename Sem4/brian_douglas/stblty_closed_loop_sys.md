### Stability of open loop system:

* We have a pretty good understanding of how the open loop system stability works.
* We plot the poles of the equation and we say the system is stable when these poles are in the negative region of the graph
* This is because we can prove that this system is decaying thus it is a stable system

### Stability of closed loop system:

* ### How can we find the satbility of close loop system?
  * **Initial idea?**
    * We know how to convert the open loop with a feedback using the formula GH/1+GH
    * And then we can calculate the stability using the open loop system that we did earlier
  * **Why??**
    * So what we have done was to find roots of the equation in 1+GH =0 , right?
    * We can do this now , easily using computers
    * But historically it was very tough to do this type of computation using the computer
  * **Solution**
    * We can calculate the stability of the system using:
      * Routh-Hurwitz criteria
      * Bode-plot
      * Niquist-plot
      * Root-locus
    * One of the most important question that a control engineer might have is:
     * How do I change the value of G of the controller such that it suffices as to what we want to achieve and is also stable?
     * These thing can be easily calculated using the above mentioned techniques    

### Routh-Hurwitz:

* ### Basic Motivation:
  * We want to calculate the roots of the equation but we do not want to solve the whole equation by factorization
  * So what Routh said was that you can determine the stability of the system only by using the co-efficients of the equation.

* ### Methodolgy
  * In this method a matrix , which is called routh array seeing which we can say that a system might or might not be stable

  1. If there is changing sighn in the polynomial of the equation then you can directly say that the system is not stable
    * For eg: ***s^3 - s^2 + s is a unstable system***
  2. Now if the equation has all the sighns as -ve or +ve then the system will can be stable or unstable , to find out we have to make the routh array

  3. ### Construction of Routh Array:
    1. To construct the matrix , you construct number of rows = order of the system , and coloums as half of that size .
    2. Then fill the co-efficients of the array in a top-bottom fashion to fill few of the members in the top 2 rows.
    3. Then you can apply the 8 patten to compute the value in the rows below that.
    4. After doing for all the values in the first coloums.
    5. Look if there is a **sighn change in the first coloums , if yes then the number of time the sighn changes it the no. of poles in the right hand plane**
    6. ### Some special Cases:
      1. See brain douglas part2 for that ...
## Frequency Response Methods:

### Bode Plot:

* ### Basic Motivation:
  * In LTI systems, we want there is no change in the frequency of the given input, but the **gain** and the **phase** of the given input changes
  * So , in order to easily plot such variation of gain and margin wrt to frequency we use bode plots.
* ### By computer method:
  * The gain vs freq plot of the system can be plotted by calculating the transfer function , and put s = jw , this will give us a complex number as the transfer function (if we take the input as u(t) or any other varaible)
  * Magnitude in that complex number can be sqrt(real^2 + imag^2)
  * Phase will be arctan(imag/real)
  * Both of whose values will be dependent on w and so the freq , so for every value we can plot these values and get the graph --> which matlab does , but by hand it is not possible.

* ### By hand method:
  * Study all 4 types of equation from which the equations can be made , then just add them up because the plot log,
  so you can see what is the function made up of , you can break it down and add the responses.

## Niquist Plot:
* ### Basic Motivation:
  * Basically in this what we say is that there is a mapping between every point in s plane to its output , which is plotted in w-plane
  * Observing this graphically(w-plane) reveals many information about the original plane and doing certain operation like adding 1 to plane and 2 to the curve will is easier in the w plane .
  * Once the w-plane is made , of the 1+GH system we can apply inverse logic to get information of the zeroes and the poles
* ### Construction:
  * At any point , what we want to do is:
  * For Magnitude multiply all the zeoes phasor magnitudes and devide by pole phasor magnitudes.
  * For phasor add the zeros angle and subtract the pole angles
* ### Observation:
 * Now if we say that w-plane(or the plot) of a contour circles the origin it means that there is one more zero than the pole in the region , cause that it add an angle of 360 degree and make it circle the origin
* ### Niquist Contour:
 * Now , we want to Basically find out the points in the right half plane right ,
 so what we can do is construct the plot in the RHP and if there are any zeros we will know about them
 * w-plot obtained by making such a contour is called Niquist plot.

* ### Methodology:
 * So what we can do is construct the niquist plot of GH
 * See all the encirclements of the point -1 on
￼
￼ the point and then get the ans.
 * No of zeroes = no of encirclements + no of poles.
 * No of poles can be find out from the open loop system. And we usually have good understanding of the open loop system , thus we can find our ans

## Pro tip : Use niquist for stability margin , then use bode for gain and phase with frequency
* ### Niquist Plot:
 * One thing we can do in this is that we can take every point in the Niquist contour and then plot every single point in w-plane to obatain the niquist plot.
 * But this is very math-intensive , how to do.
 * ### Some optimisation to reduce the math in this method:
    * Devide the contour in 2 peices and then address each of them seperately
    * First is the jw line, second is the infinity part in the contour that goes from +jw to -jw
* ### Adressing the jw line
    * We can take care of that just by plotting the jw segement by replacing s with jw in the segement, we just have to plot the positive doing that and then due to symmetry it will map to the negative part also.
* ### Adressing the contour.
    * The whole infinity contour will map to a single point in the w-plane , iff the trnsfer function is stricictly proper or proper , which we have to deal with in real life.
    * For stricictly proper the point is zero
    * For proper the point is 1 and phase is zero.
* ### Plotting by hand all the steps:
  1.  Plot the point w=o ,our plot will start from here.
  2.  Then plot w=infinity, this will be the mid point of our plot
  3.  Then plot imaginary intercepts
  4.  Then plot Real intercepts
  * #### Sketching by hand
    * Start from the starting point which is at the point for w=0 , then go through the imaginary crossover , then the real crossover if there is one , then to the mid point which it at w=infinity.
    * Then do reflection about the real axis to get the plot we want.
* ### Exception
  * ### If the pole is at imaginary axis , so we loop around that pole.

### Root Locus:

* #### Basic Motivation:
  * If we want to find out the variation of roots with a unknown parameter then , for eg say if there is a parmeter k in our function for which we want to find how are roots varying by the varaition of that parameter is what root locus does..
* ### Sketching Root Locus:
  * The number of total line will be max(poles,zeroes)
  * As k increases from 0 to infinity, roots move from poles of G(s) to the zeroes of the G(s).
     * In case they are not equal then extra lines can either come from infinty or  go to infinity
  * When roots are complex they occur in conjugate pairs
  * At no time the same roots crossover its path
  * The portion of real axis between odd numbers of root locus is part of the root locus.
  * Lines leave(breakout) and enter(breakin) into the root locus at 90* in search of the open loop poles.
  * If there arent enough poles and zeros then these line come and go from infinity
  * The line go along asymptodes , its formula will be
  (2q-1)(n-m) * 180
  * If there are atleast 2 line going to infinty then the sum of the roots will remain the same in every condition
  * rule 10
