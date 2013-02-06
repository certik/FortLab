program test_sort
  use fort_arrange
  implicit none
  integer, parameter :: n = 1000000
  integer, allocatable :: x_int(:)
  real, allocatable :: x_real(:)
  double precision, allocatable :: x_dble(:)
  real :: t0,t1,x
  integer :: i
  
  print '("============")'
  print '("Number of Elements ",/,12I,/)',n
  print '("============")'
  !Random List
  print '(/,"============")'
  print '("Random Lists")'
  print '("============")'

  !Integer
  allocate(x_int(n))
  do i = 1,n
     call random_number(x)
     x_int(i) = floor(x * 10000)
  end do
  call cpu_time(t0)
  call sort(x_int)
  call cpu_time(t1)
  print '("Integer: ",F12.6, "Sec")',t1 - t0
  i = is_sorted(x_int)
  if (i == 0) then
     print '("Success")'
  else
     print '("Fail")'
  end if
  deallocate(x_int)

  !Real
  allocate(x_real(n))
  call random_number(x_real)
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  print '("Real: ",F12.6, "Sec")',t1 - t0
  i = is_sorted(x_real)
  if (i == 0) then
     print '("Success")'
  else
     print '("Fail")'
  end if
  deallocate(x_real)

  !Double Precision
  allocate(x_dble(n))
  call random_number(x_dble)
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  print '("Double Precision: ",F12.6, "Sec")',t1 - t0
  i = is_sorted(x_dble)
  if (i == 0) then
     print '("Success")'
  else
     print '("Fail")'
  end if
  deallocate(x_dble)
end program test_sort
