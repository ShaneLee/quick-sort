import sys

def quick_sort(arr):
    if not arr: 
        return []
    pivot = arr[0]
    lower = [x for x in arr[1:] if x < pivot]
    upper = [x for x in arr[1:] if x >= pivot]
    return quick_sort(lower) + [pivot] + quick_sort(upper)
    
arr = list(map(int, sys.argv[1].split(',')))
print(quick_sort(arr))
