pure recursive subroutine quick_sort_real(vec)
  real, intent(in out) :: vec(:)
  integer :: i,j
  real :: pivot

  !Use mean of first and last to avoid n*n behavior with sorted lists
  pivot = (vec(1) + vec(size(vec))) / 2.0
  
  !Find i and j on the wrong side of the pivot and swap
  i = 0
  j = size(vec) + 1
  do
     do
        i = i + 1
        if (vec(i) >= pivot) exit
     end do
     do 
        j = j - 1
        if (vec(j) <= pivot) exit
     end do

     if (i < j) then
        call swap(vec(i),vec(j))
     elseif (i == j) then
        if (j == 1) then
           i = i + 1
        else
           j = j - 1
        end if        
        exit
     else
        exit
     end if
  end do

  !Run quick or interchange sort
  if (j > 1) then
     if (max_interchange_sort_size < j) then
        call quick_sort(vec(:j))
     else
        call interchange_sort(vec(:j))
     end if
  end if  
  if (i < size(vec)) then
     if (max_interchange_sort_size < size(vec) - i + 1) then
        call quick_sort(vec(i:))
     else
        call interchange_sort(vec(i:))
     end if
  end if
end subroutine quick_sort_real
