project "OpenALSoft"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir("bin/" .. outputdir .. "/%{prj.name}")
    objdir("bin-int/" .. outputdir .. "/%{prj.name}")

    -- Common sources
    files {
        "common/albit.h",
        "common/alcomplex.h",
        "common/alcomplex.cpp",
        "common/almalloc.h",
        "common/alnumbers.h",
        "common/alnumeric.h",
        "common/alsem.h",
        "common/alsem.cpp",
        "common/alspan.h",
        "common/alstring.h",
        "common/alstring.cpp",
        "common/althrd_setname.h",
        "common/althrd_setname.cpp",
        "common/althreads.h",
        "common/altraits.h",
        "common/atomic.h",
        "common/comptr.h",
        "common/dynload.h",
        "common/dynload.cpp",
        "common/flexarray.h",
        "common/intrusive_ptr.h",
        "common/opthelpers.h",
        "common/pffft.h",
        "common/pffft.cpp",
        "common/phase_shifter.h",
        "common/polyphase_resampler.h",
        "common/polyphase_resampler.cpp",
        "common/pragmadefs.h",
        "common/ringbuffer.h",
        "common/ringbuffer.cpp",
        "common/strutils.h",
        "common/strutils.cpp",
        "common/vecmat.h",
        "common/vector.h",
        "config.h",
        "version.h",
    }

    -- includes
    files {
        "include/AL/al.h",
        "include/AL/alc.h",
        "include/AL/alext.h",
        "include/AL/efx.h",
        "include/AL/efx-presets.h",
    }

    -- al
    files {
        "al/eax/api.h",
        "al/eax/api.cpp",
        "al/eax/call.h",
        "al/eax/call.cpp",
        "al/eax/effect.h",
        "al/eax/exception.h",
        "al/eax/exception.cpp",
        "al/eax/fx_slot_index.h",
        "al/eax/fx_slot_index.cpp",
        "al/eax/fx_slots.h",
        "al/eax/fx_slots.cpp",
        "al/eax/globals.h",
        "al/eax/utils.h",
        "al/eax/utils.cpp",
        "al/eax/x_ram.h",

        "al/effects/autowah.cpp",
        "al/effects/chorus.cpp",
        "al/effects/compressor.cpp",
        "al/effects/convolution.cpp",
        "al/effects/dedicated.cpp",
        "al/effects/distortion.cpp",
        "al/effects/echo.cpp",
        "al/effects/effect.h",
        "al/effects/effects.cpp",
        "al/effects/equalizer.cpp",
        "al/effects/fshifter.cpp",
        "al/effects/fshifter.cpp",
        "al/effects/modulator.cpp",
        "al/effects/null.cpp",
        "al/effects/pshifter.cpp",
        "al/effects/reverb.cpp",
        "al/effects/vmorpher.cpp",

        "al/auxeffectslot.h",
        "al/auxeffectslot.cpp",
        "al/buffer.h",
        "al/buffer.cpp",
        "al/debug.h",
        "al/debug.cpp",
        "al/direct_defs.h",
        "al/effect.h",
        "al/effect.cpp",
        "al/error.cpp",
        "al/event.h",
        "al/event.cpp",
        "al/extension.cpp",
        "al/filter.h",
        "al/filter.cpp",
        "al/listener.h",
        "al/listener.cpp",
        "al/source.h",
        "al/source.cpp",
        "al/state.cpp",
    }

    -- alc
    files {
        "alc/effects/autowah.cpp",
        "alc/effects/chorus.cpp",
        "alc/effects/compressor.cpp",
        "alc/effects/convolution.cpp",
        "alc/effects/dedicated.cpp",
        "alc/effects/distortion.cpp",
        "alc/effects/echo.cpp",
        "alc/effects/equalizer.cpp",
        "alc/effects/fshifter.cpp",
        "alc/effects/modulator.cpp",
        "alc/effects/null.cpp",
        "alc/effects/pshifter.cpp",
        "alc/effects/reverb.cpp",
        "alc/effects/vmorpher.cpp",

        "alc/alc.cpp",
        "alc/alconfig.h",
        "alc/alconfig.cpp",
        "alc/alu.h",
        "alc/alu.cpp",
        "alc/base.h",
        "alc/context.h",
        "alc/context.cpp",
        "alc/device.h",
        "alc/device.cpp",
        "alc/events.h",
        "alc/events.cpp",
        "alc/export_list.h",
        "alc/inprogext.h",
        "alc/panning.cpp",
    }

    -- backends
    files {
        "alc/backends/base.h",
        "alc/backends/base.cpp",
        "alc/backends/dsound.h",
        "alc/backends/dsound.cpp",
        "alc/backends/loopback.h",
        "alc/backends/loopback.cpp",
        "alc/backends/null.h",
        "alc/backends/null.cpp",
        "alc/backends/wasapi.h",
        "alc/backends/wasapi.cpp",
        "alc/backends/wave.h",
        "alc/backends/wave.cpp",
        "alc/backends/winmm.h",
        "alc/backends/winmm.cpp",
    }

    -- core
    files {
        "core/filters/biquad.h",
        "core/filters/biquad.cpp",
        "core/filters/nfc.h",
        "core/filters/nfc.cpp",
        "core/filters/splitter.h",
        "core/filters/splitter.cpp",

        "core/mixer/defs.h",
        "core/mixer/hrtfbase.h",
        "core/mixer/hrtfdefs.h",
        "core/mixer/mixer_c.h",
        "core/mixer/mixer_c.cpp",
        "core/mixer/mixer_sse.h",
        "core/mixer/mixer_sse.cpp",
        "core/mixer/mixer_sse2.h",
        "core/mixer/mixer_sse2.cpp",
        "core/mixer/mixer_sse3.h",
        "core/mixer/mixer_sse3.cpp",
        "core/mixer/mixer_sse41.h",
        "core/mixer/mixer_sse41.cpp",

        "core/ambdec.h",
        "core/ambdec.cpp",
        "core/ambidefs.h",
        "core/ambidefs.cpp",
        "core/async_event.h",
        "core/base.h",
        "core/bformatdec.h",
        "core/bformatdec.cpp",
        "core/bs2b.h",
        "core/bs2b.cpp",
        "core/bsinc_defs.h",
        "core/bsinc_tables.h",
        "core/bsinc_tables.cpp",
        "core/buffer_storage.h",
        "core/buffer_storage.cpp",
        "core/bufferline.h",
        "core/context.h",
        "core/context.cpp",
        "core/converter.h",
        "core/converter.cpp",
        "core/cpu_caps.h",
        "core/cpu_caps.cpp",
        "core/cubic_defs.h",
        "core/cubic_tables.h",
        "core/cubic_tables.cpp",
        "core/devformat.h",
        "core/devformat.cpp",
        "core/device.h",
        "core/device.cpp",
        "core/effectslot.h",
        "core/effectslot.cpp",
        "core/except.h",
        "core/except.cpp",
        "core/fmt_traits.h",
        "core/fmt_traits.cpp",
        "core/fpu_ctrl.h",
        "core/fpu_ctrl.cpp",
        "core/front_stablizer.h",
        "core/helpers.h",
        "core/helpers.cpp",
        "core/hrtf.h",
        "core/hrtf.cpp",
        "core/logging.h",
        "core/logging.cpp",
        "core/mastering.h",
        "core/mastering.cpp",
        "core/mixer.h",
        "core/mixer.cpp",
        "core/resampler_limits.h",
        "core/uhjfilter.h",
        "core/uhjfilter.cpp",
        "core/uiddefs.cpp",
        "core/voice.h",
        "core/voice.cpp",
        "core/voice_change.h",
    }

    includedirs {
        ".",
        "include",
        "common",
        "core",
        "al",
        "alc",
    }

	defines
	{
		"WIN32",
		"_WINDOWS",
		"_WIN32",
        "AL_BUILD_LIBRARY",
        "AL_ALEXT_PROTOTYPES",
        "ALC_API=__declspec(dllexport)",
		"AL_API=__declspec(dllexport)",
        "NOMINMAX",
        "RESTRICT=__restrict",
        "_CRT_SECURE_NO_WARNINGS",
        "OpenAL_EXPORTS",
        "AL_LIBTYPE_STATIC",
	}

    filter "system:windows"
        systemversion "latest"

        links
        {
            "winmm"
        }
    
        conformancemode (true)

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"