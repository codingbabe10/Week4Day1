"""Find Smallest Number - (Without min)
Create a function that given a list of numbers (non-sorted) find the lowest number in the list and return it.
Example Input: [50,30,4,2,11,0]
Example Output: 0
Example Input 2: [40,3,4,2]
Example Output 2: 2"""



def smallest_number(list):
    #takes list
    #puts list in order 
    #take first index (ie lowest number)
    sorted_list=sorted(list)
    print(sorted_list[0])

smallest_number([50,30,4,2,11,0])









def smallest_number(lst):
    small = lst[0]
    for num in lst:
        if num <= small:
            small = num
    print(small)

smallest_number([40, 3, 4, 2])


