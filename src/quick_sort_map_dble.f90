recursive subroutine quick_sort_map_dble(vec,map)
  double precision, intent(in out) :: vec(:)
  integer, intent(in out) :: map(:)
  integer :: i,j
  double precision :: pivot

  !Use mean of first and last to avoid n*n behavior with sorted lists
  pivot = (vec(1) + vec(size(vec))) / 2

  !Find i and j on the wrong side of the pivot and swap
  i = 0
  j = size(vec) + 1
  do
     do
        i = i + 1
        if (vec(i) > pivot) exit
     end do
     do 
        j = j - 1
        if (vec(j) < pivot) exit
     end do
     if (i > j) exit
     call swap(vec(i),vec(j))
     call swap(map(i),map(j))
  end do

  !Run quick or interchange sort on the smaller lists
  j = i - 1
  if (max_interchange_sort_size < j) then
     call quick_sort(vec(:j),map(:j))
  else
     call interchange_sort(vec(:j),map(:j))
  end if
  if (max_interchange_sort_size < size(vec) - i + 1) then
     call quick_sort(vec(i:),map(i:))
  else
     call interchange_sort(vec(i:),map(i:))     
  end if
end subroutine quick_sort_map_dble




