import matplotlib.patches as pat
import matplotlib.pyplot as plt 
c = pat.Circle((0.5, 0.5),radius=0.1)
ax = plt.axes()
ax.add_patch(c)
------------------------------------------
c = pat.Circle((0.5, 0.5),radius=0.1
               ,edgecolor='red',facecolor='g', alpha=0.3)
------------------------------------------
c = pat.Circle((-2,5),radius=4
               ,color='b', alpha=1)
------------------------------------------
c = pat.Ellipse((-2,5),2,3,20,color='r')
#center , width , height , angle , color
------------------------------------------
c = pat.Rectangle((0.2, 0.2), 1, 1.2, color='r',angle =20 )
 #location of southwest ,width ,hight ,color , angle
------------------------------------------
c = pat.Rectangle((-2, 3), 4,2, color='b',angle =-30 )
------------------------------------------
c = pat.Polygon(((-7,-7), (5,-2), (-5,5)) ,color='b')
# vertices , color
------------------------------------------
c = pat.Polygon(((-7,-7),(5,-2),(2,7),(-5,5)) ,color='b')
# vertices , color
------------------------------------------
c = pat.Polygon(((-7,-7),(0,-8),(5,-7),(8,0),
                 (0,-3),(3,8),(0,10),(-10,5)),
                color='b')
------------------------------------------
c = pat.Arc((3,2),7,10,theta1=0,theta2=80  )
# center , width , height ,start angle , end angle
------------------------------------------
c = pat.Arc((3,2),7,10,theta1=80,theta2=300,color='r' )