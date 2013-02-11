module fort_string
  implicit none
  integer, parameter, private :: max_int_len = 12
  integer, parameter, private :: max_real_len = 16
  integer, parameter, private :: max_dble_len = 28
  interface lower_case
     module procedure lower_case_scl
     module procedure lower_case_vec
     module procedure lower_case_mat
  end interface lower_case
  interface num2str
     module procedure int2str
     module procedure real2str
     module procedure dble2str
  end interface num2str
  interface strip
     module procedure strip_scl
     module procedure strip_vec
     module procedure strip_mat
  end interface strip
  interface triml
     module procedure triml_scl
     module procedure triml_vec
     module procedure triml_mat
  end interface triml
  interface trimr
     module procedure trimr_scl
     module procedure trimr_vec
     module procedure trimr_mat
  end interface trimr
  interface upper_case
     module procedure upper_case_scl
     module procedure upper_case_vec
     module procedure upper_case_mat
  end interface upper_case
contains
  include 'count_chars.f90'
  include 'index_chars.f90'
  include 'lower_case.f90'
  include 'num2str.f90'
  include 'split.f90'
  include 'strip.f90'
  include 'trimr.f90'
  include 'triml.f90'
  include 'upper_case.f90'
end module fort_string

