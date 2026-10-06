ENTRY(Reset)
MEMORY
{
  ITCM (rx)  : ORIGIN = 0x00000400, LENGTH = 63K
  DTCM (rwx) : ORIGIN = 0x20000000, LENGTH = 60K
}
SECTIONS
{
  .vectors ORIGIN(ITCM) :
  {
    LONG(ORIGIN(DTCM) + LENGTH(DTCM));
    LONG(Reset + 1);
  } > ITCM
  .text : ALIGN(4)
  {
    *(.text.Reset);
    *(.text .text.*);
    *(.rodata .rodata.*);
  } > ITCM
  .data : ALIGN(4) { *(.data .data.*); } > DTCM
  .bss (NOLOAD) : ALIGN(4)
  {
    __bss_start = .;
    *(.bss .bss.*);
    *(COMMON);
    __bss_end = .;
  } > DTCM
  /DISCARD/ : { *(.ARM.exidx .ARM.exidx.*); }
}
