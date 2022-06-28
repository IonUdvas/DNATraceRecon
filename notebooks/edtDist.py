import numpy as np
import random
import csv
import time
import math

# 1. If last characters of two strings are same, nothing much to do. Ignore last characters and get count for remaining strings. So we recur for lengths m-1 and n-1.
# 2. Else (If last characters are not same), we consider all operations on ‘str1’, consider all three operations on last character of first string, recursively compute minimum cost for all three operations and take minimum of three values.
  
#  a. Insert: Recur for m and n-1
  
#  b. Remove: Recur for m-1 and n
 
#  c. Replace: Recur for m-1 and n-1

def editDistanceString(str1, str2, m, n):

    # If first string is empty, the only option is to
    # insert all characters of second string into first
    if m == 0:
        return n

    # If second string is empty, the only option is to
    # remove all characters of first string
    if n == 0:
        return m

    # If last characters of two strings are same, nothing
    # much to do. Ignore last characters and get count for
    # remaining strings.
    if str1[m-1] == str2[n-1]:
        return editDistance(str1, str2, m-1, n-1)

    # If last characters are not same, consider all three
    # operations on last character of first string, recursively
    # compute minimum cost for all three operations and take
    # minimum of three values.
    return 1 + min(editDistance(str1, str2, m, n-1), # Insert
                editDistance(str1, str2, m-1, n), # Remove
                editDistance(str1, str2, m-1, n-1) # Replace
                )

#For Testing

str1 = "sunday"
str2 = "saturday"
print (editDistance(str1, str2, len(str1), len(str2)))