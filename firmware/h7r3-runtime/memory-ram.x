ENTRY(Reset)

MEMORY
{
  RAM (rwx) : ORIGIN = 0x24069C00, LENGTH = 32K
}

SECTIONS
{
  .vectors ORIGIN(RAM) :
  {
    LONG(ORIGIN(RAM) + LENGTH(RAM));
    LONG(Reset + 1);
  } > RAM

  .text : ALIGN(4)
  {
    *(.text.Reset);
    *(.text .text.*);
    *(.rodata .rodata.*);
  } > RAM

  .data : ALIGN(4)
  {
    *(.data .data.*);
  } > RAM

  .bss (NOLOAD) : ALIGN(4)
  {
    __bss_start = .;
    *(.bss .bss.*);
    *(COMMON);
    __bss_end = .;
  } > RAM

  /DISCARD/ :
  {
    *(.ARM.exidx .ARM.exidx.*);
  }
}
