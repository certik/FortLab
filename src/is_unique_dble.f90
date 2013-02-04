function is_unique_dble(vec) result(out)
  double precision, intent(in) :: vec(:)
  logical :: out
  integer :: i
  double precision :: x(size(vec))

  !Make a copy of vec and sort it
  call DCOPY(size(vec), vec, 1, x, 1)
  call sort(x)

  !Check for unique
  out = .true.
  do i = 2,size(vec)
     if (x(i) == x(i - 1)) then
        out = .false.
        exit
     end if
  end do
end function is_unique_dble




