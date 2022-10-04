def area_of_circle(r):
    area = (r **2) * 3.142
    return area

radius = input("Please enter the radius of the circle: \n")
print(f"The area of the circle is {area_of_circle(int(radius))}")
