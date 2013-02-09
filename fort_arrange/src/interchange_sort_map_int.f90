pure subroutine interchange_sort_map_int(vec,map)
  integer, intent(in out) :: vec(:)
  integer, intent(in out) :: map(:)
  integer :: i,j
  do i = 1,size(vec) - 1
     j = minloc(vec(i:),1)
     if (j > 1) then
        call swap(vec(i),vec(i + j - 1))
        call swap(map(i),map(i + j - 1))
     end if
  end do
end subroutine interchange_sort_map_int
