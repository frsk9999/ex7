
#if defined(__FreeBSD__)
/* original code from /usr/src/lib/libc/stdio/printf.c
int
printf(char const * __restrict fmt, ...)
{
        int ret;
        va_list ap;

        va_start(ap, fmt);
        ret = vfprintf(stdout, fmt, ap);
        va_end(ap);
        return (ret);
}
*/
int printf(const char * __restrict fmt, ...)
{
    return 1;
}
#endif

#if defined(__linux) || defined(__linux__)
/* For linux(glibc)
original source is follow:
int
__printf (const char *format, ...)
{
  va_list arg;
  int done;

  va_start (arg, format);
  done = vfprintf (stdout, format, arg);
  va_end (arg);

  return done;
}
so
*/

int __printf(const char *format, ...)
{
    return 1;
}
#endif
