program test_sort_speed_1
  use fort_arrange
  implicit none
  integer, parameter :: n = 1000000
  integer :: x_int(n)
  real :: x_real(n)
  double precision :: x_dble(n)
  real :: t0,t1
  integer :: i
  
  !Random List
  print '("Random Lists")'
  print '("============")'
  call random_number(x_dble)
  call random_number(x_real)



  
!  x_int = int(x_dble)
  
  !Double Precision
  call cpu_time(t0)
  call sort(x_dble)
  call cpu_time(t1)
  print '("Double Precision: ",F8.4, "Sec")',t1 - t0
  
  !Integer
!  call cpu_time(t0)
!  call sort(x_int)
!  call cpu_time(t1)
!  print '("Integer: ",F8.4, "Sec")',t1 - t0

  !Real
  call cpu_time(t0)
  call sort(x_real)
  call cpu_time(t1)
  print '("Real: ",F8.4, "Sec")',t1 - t0
end program test_sort_speed_1
