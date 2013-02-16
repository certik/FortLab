pure subroutine quick_sort_dble(vec)
  double precision, intent(in out) :: vec(:)
  integer, parameter :: levels = 300
  integer :: i,left,right,l_bound(levels),u_bound(levels)
  double precision :: pivot

  l_bound(1) = 1
  u_bound(1) = size(vec)
  i = 1
  do while(i >= 1)
     left = l_bound(i)
     right = u_bound(i)
     if (right - left < max_interchange_sort_size) then
        if (left < right) call interchange_sort(vec(left:right))
        i = i - 1
     else
        pivot = (vec(left) + vec(right)) / 2
        left = left - 1
        right = right + 1
        do
           do
              left = left + 1
              if (vec(left) >= pivot) exit
           end do
           do
              right = right - 1
                    if (vec(right) <= pivot) exit
           end do
           if (left < right) then
              call swap(vec(left),vec(right))
           elseif(left == right) then
              if (left == l_bound(i)) then
                 left = left + 1
              else
                 right = right - 1
              end if
              exit
           else
              exit
           end if
           end do
           u_bound(i + 1) = u_bound(i)
           l_bound(i + 1) = left
           u_bound(i) = right
           i = i + 1
     end if
  end do
end subroutine quick_sort_dble
