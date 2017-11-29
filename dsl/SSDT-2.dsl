/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLHQhV1x.aml, Wed Nov 29 10:34:59 2017
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000303 (771)
 *     Revision         0x02
 *     Checksum         0x6F
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApIst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20101013 (537923603)
 */
DefinitionBlock ("iASLHQhV1x.aml", "SSDT", 2, "PmRef", "ApIst", 0x00003000)
{
    External (\_PR_.CPU7, DeviceObj)
    External (\_PR_.CPU6, DeviceObj)
    External (\_PR_.CPU5, DeviceObj)
    External (\_PR_.CPU4, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU0._PSD, IntObj)
    External (\_PR_.CPU0._PSS, IntObj)
    External (\_PR_.CPU0._PCT, IntObj)
    External (\_PR_.CPU0._PPC, IntObj)

    Scope (\_PR.CPU1)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU4)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU5)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU6)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }

    Scope (\_PR.CPU7)
    {
        Method (_PPC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PPC)
        }

        Method (_PCT, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PCT)
        }

        Method (_PSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSS)
        }

        Method (_PSD, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PSD)
        }
    }
}

