/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLA3QiaV.aml, Wed Nov 29 10:33:44 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000119 (281)
 *     Revision         0x02
 *     Checksum         0xE5
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApCst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLA3QiaV.aml", "SSDT", 2, "PmRef", "ApCst", 0x00003000)
{
    External (\_PR_.CPU7, DeviceObj)
    External (\_PR_.CPU6, DeviceObj)
    External (\_PR_.CPU5, DeviceObj)
    External (\_PR_.CPU4, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU0._CST, IntObj)

    Scope (\_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU4)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU5)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU6)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }

    Scope (\_PR.CPU7)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST)
        }
    }
}

