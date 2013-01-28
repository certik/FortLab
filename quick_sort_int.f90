recursive subroutine quick_sort_int(n,x)
  integer, intent(in) :: n
  integer, intent(in out) :: x(n)
  integer :: i,j
  integer :: pivot

  !Use mean of first and last to avoid n*n behavior with sorted lists
  pivot = (x(1) + x(n)) / 2

  !Find i and j on the wrong side of the pivot and swap
  i = 0
  j = n + 1
  do
     do
        i = i + 1
        if (x(i) > pivot) exit
     end do
     do 
        j = j - 1
        if (x(j) < pivot) exit
     end do
     if (i > j) exit
     call swap(x(i),x(j))
  end do

  !Run quick or interchange sort on the smaller lists
  j = i - 1
  if (max_interchange_sort_size < j) then
     call quick_sort(j,x(:j))
  else
     call interchange_sort(j,x(:j))
  end if
  j = n - i + 1
  if (max_interchange_sort_size < j) then
     call quick_sort(j,x(i:))
  else
     call interchange_sort(j,x(i:))
  end if
end subroutine quick_sort_int






