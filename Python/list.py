def Full(A):

   even_list = []
   odd_list = []
   for i in A:
      if (i % 2 == 0):
         even_list.append(i)
      else:
         odd_list.append(i)
   print("Even lists:", even_list)
   print("Odd lists:", odd_list)

   even_sum = sum(even_list)
   odd_sum = sum(odd_list)

   dict = {
       "Sum of even numbers" : even_sum,
       "Sum of odd numbers" : odd_sum,
   }
   print("dictionary: %s" % dict)

A = [1,2,3,4,5,6,7,8,9]
Full(A)

