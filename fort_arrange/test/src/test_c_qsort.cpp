#include <cstdlib>
#include <iostream>
#include <ctime>
#include <cstdlib>

extern "C"
{
  void c_qsort_int (int n,int x[]);
  void c_qsort_real (int n,float x[]);
  void c_qsort_dble (int n,double x[]);
}

int compare_int (const void *a, const void *b)
{
  return (*(int *)a - *(int *)b);
}

int compare_real (const void *a, const void *b)
{
  if (*(float *)a > *(float *)b) return 1;
  if (*(float *)b > *(float *)a)  return -1;
  return 0;
}

int compare_dble (const void *a, const void *b)
{
  if (*(double *)a > *(double *)b) return 1;
  if (*(double *)b > *(double *)a)  return -1;
  return 0;
}

void c_qsort_int (int n, int x[]){
  time_t t0;
  time_t t1;
  t0 = time(NULL);
  std::qsort(x,n,sizeof(float),compare_int);
  t1 = time(NULL);
  std::cout << "C qsort       " << difftime(t1,t0) << " seconds" << std::endl;
}

void c_qsort_real (int n, float x[]){
  time_t t0;
  time_t t1;
  t0 = time(NULL);
  std::qsort(x,n,sizeof(float),compare_real);
  t1 = time(NULL);
  std::cout << "C qsort       " << difftime(t1,t0) << " seconds" << std::endl;
}

void c_qsort_dble (int n, double x[]){
  time_t t0;
  time_t t1;
  t0 = time(NULL);
  std::qsort(x,n,sizeof(float),compare_dble);
  t1 = time(NULL);
  std::cout << "C qsort       " << difftime(t1,t0) << " seconds" << std::endl;
}
