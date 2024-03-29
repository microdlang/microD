module microd.sys.linux.syslist.linux_x86_64;

version(X86_64):
import microd.types;

enum READ = 0;
enum WRITE = 1;
enum OPEN = 2;
enum CLOSE = 3;
enum STAT = 4;
enum FSTAT = 5;
enum LSTAT = 6;
enum POLL = 7;
enum LSEEK = 8;
enum MMAP = 9;
enum MPROTECT = 10;
enum MUNMAP = 11;
enum BRK = 12;
enum RT_SIGACTION = 13;
enum RT_SIGPROCMASK = 14;
enum RT_SIGRETURN = 15;
enum IOCTL = 16;
enum PREAD64 = 17;
enum PWRITE64 = 18;
enum READV = 19;
enum WRITEV = 20;
enum ACCESS = 21;
enum PIPE = 22;
enum SELECT = 23;
enum SCHED_YIELD = 24;
enum MREMAP = 25;
enum MSYNC = 26;
enum MINCORE = 27;
enum MADVISE = 28;
enum SHMGET = 29;
enum SHMAT = 30;
enum SHMCTL = 31;
enum DUP = 32;
enum DUP2 = 33;
enum PAUSE = 34;
enum NANOSLEEP = 35;
enum GETITIMER = 36;
enum ALARM = 37;
enum SETITIMER = 38;
enum GETPID = 39;
enum SENDFILE = 40;
enum SOCKET = 41;
enum CONNECT = 42;
enum ACCEPT = 43;
enum SENDTO = 44;
enum RECVFROM = 45;
enum SENDMSG = 46;
enum RECVMSG = 47;
enum SHUTDOWN = 48;
enum BIND = 49;
enum LISTEN = 50;
enum GETSOCKNAME = 51;
enum GETPEERNAME = 52;
enum SOCKETPAIR = 53;
enum SETSOCKOPT = 54;
enum GETSOCKOPT = 55;
enum CLONE = 56;
enum FORK = 57;
enum VFORK = 58;
enum EXECVE = 59;
enum EXIT = 60;
enum WAIT4 = 61;
enum KILL = 62;
enum UNAME = 63;
enum SEMGET = 64;
enum SEMOP = 65;
enum SEMCTL = 66;
enum SHMDT = 67;
enum MSGGET = 68;
enum MSGSND = 69;
enum MSGRCV = 70;
enum MSGCTL = 71;
enum FCNTL = 72;
enum FLOCK = 73;
enum FSYNC = 74;
enum FDATASYNC = 75;
enum TRUNCATE = 76;
enum FTRUNCATE = 77;
enum GETDENTS = 78;
enum GETCWD = 79;
enum CHDIR = 80;
enum FCHDIR = 81;
enum RENAME = 82;
enum MKDIR = 83;
enum RMDIR = 84;
enum CREAT = 85;
enum LINK = 86;
enum UNLINK = 87;
enum SYMLINK = 88;
enum READLINK = 89;
enum CHMOD = 90;
enum FCHMOD = 91;
enum CHOWN = 92;
enum FCHOWN = 93;
enum LCHOWN = 94;
enum UMASK = 95;
enum GETTIMEOFDAY = 96;
enum GETRLIMIT = 97;
enum GETRUSAGE = 98;
enum SYSINFO = 99;
enum TIMES = 100;
enum PTRACE = 101;
enum GETUID = 102;
enum SYSLOG = 103;
enum GETGID = 104;
enum SETUID = 105;
enum SETGID = 106;
enum GETEUID = 107;
enum GETEGID = 108;
enum SETPGID = 109;
enum GETPPID = 110;
enum GETPGRP = 111;
enum SETSID = 112;
enum SETREUID = 113;
enum SETREGID = 114;
enum GETGROUPS = 115;
enum SETGROUPS = 116;
enum SETRESUID = 117;
enum GETRESUID = 118;
enum SETRESGID = 119;
enum GETRESGID = 120;
enum GETPGID = 121;
enum SETFSUID = 122;
enum SETFSGID = 123;
enum GETSID = 124;
enum CAPGET = 125;
enum CAPSET = 126;
enum RT_SIGPENDING = 127;
enum RT_SIGTIMEDWAIT = 128;
enum RT_SIGQUEUEINFO = 129;
enum RT_SIGSUSPEND = 130;
enum SIGALTSTACK = 131;
enum UTIME = 132;
enum MKNOD = 133;
enum USELIB = 134;
enum PERSONALITY = 135;
enum USTAT = 136;
enum STATFS = 137;
enum FSTATFS = 138;
enum SYSFS = 139;
enum GETPRIORITY = 140;
enum SETPRIORITY = 141;
enum SCHED_SETPARAM = 142;
enum SCHED_GETPARAM = 143;
enum SCHED_SETSCHEDULER = 144;
enum SCHED_GETSCHEDULER = 145;
enum SCHED_GET_PRIORITY_MAX = 146;
enum SCHED_GET_PRIORITY_MIN = 147;
enum SCHED_RR_GET_INTERVAL = 148;
enum MLOCK = 149;
enum MUNLOCK = 150;
enum MLOCKALL = 151;
enum MUNLOCKALL = 152;
enum VHANGUP = 153;
enum MODIFY_LDT = 154;
enum PIVOT_ROOT = 155;
enum _SYSCTL = 156;
enum PRCTL = 157;
enum ARCH_PRCTL = 158;
enum ADJTIMEX = 159;
enum SETRLIMIT = 160;
enum CHROOT = 161;
enum SYNC = 162;
enum ACCT = 163;
enum SETTIMEOFDAY = 164;
enum MOUNT = 165;
enum UMOUNT2 = 166;
enum SWAPON = 167;
enum SWAPOFF = 168;
enum REBOOT = 169;
enum SETHOSTNAME = 170;
enum SETDOMAINNAME = 171;
enum IOPL = 172;
enum IOPERM = 173;
enum CREATE_MODULE = 174;
enum INIT_MODULE = 175;
enum DELETE_MODULE = 176;
enum GET_KERNEL_SYMS = 177;
enum QUERY_MODULE = 178;
enum QUOTACTL = 179;
enum NFSSERVCTL = 180;
enum GETPMSG = 181;
enum PUTPMSG = 182;
enum AFS_SYSCALL = 183;
enum TUXCALL = 184;
enum SECURITY = 185;
enum GETTID = 186;
enum READAHEAD = 187;
enum SETXATTR = 188;
enum LSETXATTR = 189;
enum FSETXATTR = 190;
enum GETXATTR = 191;
enum LGETXATTR = 192;
enum FGETXATTR = 193;
enum LISTXATTR = 194;
enum LLISTXATTR = 195;
enum FLISTXATTR = 196;
enum REMOVEXATTR = 197;
enum LREMOVEXATTR = 198;
enum FREMOVEXATTR = 199;
enum TKILL = 200;
enum TIME = 201;
enum FUTEX = 202;
enum SCHED_SETAFFINITY = 203;
enum SCHED_GETAFFINITY = 204;
enum SET_THREAD_AREA = 205;
enum IO_SETUP = 206;
enum IO_DESTROY = 207;
enum IO_GETEVENTS = 208;
enum IO_SUBMIT = 209;
enum IO_CANCEL = 210;
enum GET_THREAD_AREA = 211;
enum LOOKUP_DCOOKIE = 212;
enum EPOLL_CREATE = 213;
enum EPOLL_CTL_OLD = 214;
enum EPOLL_WAIT_OLD = 215;
enum REMAP_FILE_PAGES = 216;
enum GETDENTS64 = 217;
enum SET_TID_ADDRESS = 218;
enum RESTART_SYSCALL = 219;
enum SEMTIMEDOP = 220;
enum FADVISE64 = 221;
enum TIMER_CREATE = 222;
enum TIMER_SETTIME = 223;
enum TIMER_GETTIME = 224;
enum TIMER_GETOVERRUN = 225;
enum TIMER_DELETE = 226;
enum CLOCK_SETTIME = 227;
enum CLOCK_GETTIME = 228;
enum CLOCK_GETRES = 229;
enum CLOCK_NANOSLEEP = 230;
enum EXIT_GROUP = 231;
enum EPOLL_WAIT = 232;
enum EPOLL_CTL = 233;
enum TGKILL = 234;
enum UTIMES = 235;
enum VSERVER = 236;
enum MBIND = 237;
enum SET_MEMPOLICY = 238;
enum GET_MEMPOLICY = 239;
enum MQ_OPEN = 240;
enum MQ_UNLINK = 241;
enum MQ_TIMEDSEND = 242;
enum MQ_TIMEDRECEIVE = 243;
enum MQ_NOTIFY = 244;
enum MQ_GETSETATTR = 245;
enum KEXEC_LOAD = 246;
enum WAITID = 247;
enum ADD_KEY = 248;
enum REQUEST_KEY = 249;
enum KEYCTL = 250;
enum IOPRIO_SET = 251;
enum IOPRIO_GET = 252;
enum INOTIFY_INIT = 253;
enum INOTIFY_ADD_WATCH = 254;
enum INOTIFY_RM_WATCH = 255;
enum MIGRATE_PAGES = 256;
enum OPENAT = 257;
enum MKDIRAT = 258;
enum MKNODAT = 259;
enum FCHOWNAT = 260;
enum FUTIMESAT = 261;
enum NEWFSTATAT = 262;
enum UNLINKAT = 263;
enum RENAMEAT = 264;
enum LINKAT = 265;
enum SYMLINKAT = 266;
enum READLINKAT = 267;
enum FCHMODAT = 268;
enum FACCESSAT = 269;
enum PSELECT6 = 270;
enum PPOLL = 271;
enum UNSHARE = 272;
enum SET_ROBUST_LIST = 273;
enum GET_ROBUST_LIST = 274;
enum SPLICE = 275;
enum TEE = 276;
enum SYNC_FILE_RANGE = 277;
enum VMSPLICE = 278;
enum MOVE_PAGES = 279;
enum UTIMENSAT = 280;
enum EPOLL_PWAIT = 281;
enum SIGNALFD = 282;
enum TIMERFD_CREATE = 283;
enum EVENTFD = 284;
enum FALLOCATE = 285;
enum TIMERFD_SETTIME = 286;
enum TIMERFD_GETTIME = 287;
enum ACCEPT4 = 288;
enum SIGNALFD4 = 289;
enum EVENTFD2 = 290;
enum EPOLL_CREATE1 = 291;
enum DUP3 = 292;
enum PIPE2 = 293;
enum INOTIFY_INIT1 = 294;
enum PREADV = 295;
enum PWRITEV = 296;
enum RT_TGSIGQUEUEINFO = 297;
enum PERF_EVENT_OPEN = 298;
enum RECVMMSG = 299;
enum FANOTIFY_INIT = 300;
enum FANOTIFY_MARK = 301;
enum PRLIMIT64 = 302;
enum NAME_TO_HANDLE_AT = 303;
enum OPEN_BY_HANDLE_AT = 304;
enum CLOCK_ADJTIME = 305;
enum SYNCFS = 306;
enum SENDMMSG = 307;
enum SETNS = 308;
enum GETCPU = 309;
enum PROCESS_VM_READV = 310;
enum PROCESS_VM_WRITEV = 311;
enum KCMP = 312;
enum FINIT_MODULE = 313;
enum SCHED_SETATTR = 314;
enum SCHED_GETATTR = 315;
enum RENAMEAT2 = 316;
enum SECCOMP = 317;
enum GETRANDOM = 318;
enum MEMFD_CREATE = 319;
enum KEXEC_FILE_LOAD = 320;
enum BPF = 321;
enum EXECVEAT = 322;
enum USERFAULTFD = 323;
enum MEMBARRIER = 324;
enum MLOCK2 = 325;
enum COPY_FILE_RANGE = 326;
enum PREADV2 = 327;
enum PWRITEV2 = 328;