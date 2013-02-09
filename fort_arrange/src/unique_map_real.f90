subroutine unique_map_real(vec_in,vec_out,map)
  real, intent(in) :: vec_in(:)
  real, intent(out), allocatable :: vec_out(:)
  integer, intent(out), allocatable :: map(:)
  real :: x(size(vec_in))
  integer :: i,j,n
  logical :: inc(size(vec_in))

  !Make a copy of vec_in and sort it
  call SCOPY(size(vec_in), vec_in, 1, x, 1)
  call sort(x)

  !Build include vector
  inc = .true.
  i = 1
  do
     if (i > size(x)) exit
     j = i
     do 
        j = j + 1
        if (j > size(x)) exit
        if (x(i) == x(j)) then
           inc(j) = .false.
        else
           i = j
        end if
     end do
  end do

  !Build out vector and map
  n = count(inc)
  allocate(vec_out(n))
  allocate(map(n))
  j = 0
  do i = 1,size(x)
     if (inc(i)) then
        j = j + 1
        vec_out(j) = x(i)
        map(j) = i
     end if
  end do
end subroutine unique_map_real
