function is_unique_int(vec) result(out)
  integer, intent(in) :: vec(:)
  logical :: out
  integer :: i
  integer :: x(size(vec))

  !Make a copy of vec and sort it
  x = vec
  call sort(x)

  !Check for unique
  out = .true.
  do i = 2,size(vec)
     if (x(i) == x(i - 1)) then
        out = .false.
        exit
     end if
  end do
end function is_unique_int




