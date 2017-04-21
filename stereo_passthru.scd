(
SynthDef
(
	"AudioIn-Left",
    {
		arg out=0;
		Out.ar( out, SoundIn.ar(0) )
	}
).add;
)

(
SynthDef
(
	"AudioIn-Right",
    {
		arg out=1;
		Out.ar( out, SoundIn.ar(1) )
	}
).add;
)

a = Synth.new("AudioIn-Left");
b = Synth.new("AudioIn-Right");

a.run(false);
b.run(false);

a.run(true);
b.run(true);

a.free;
b.free;
