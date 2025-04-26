// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_button.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final FixedButtonComponent = LeafComponent<FixedButton, FixedButtonArgs>(
  meta: meta,
  story: $Primary,
);
typedef FixedButtonScenario = Scenario<FixedButton, FixedButtonArgs>;

class FixedButtonStory extends Story<FixedButton, FixedButtonArgs> {
  FixedButtonStory({
    required super.name,
    super.setup,
    FixedButtonArgs? args,
    ArgsBuilder<FixedButton, FixedButtonArgs>? argsBuilder,
  }) : super(
          args: args ?? FixedButtonArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  FixedButton(key: args.key?.resolve(context)),
        );
}

class FixedButtonArgs extends StoryArgs<FixedButton> {
  FixedButtonArgs({Arg<Key>? key}) : this.key = key?.init(name: 'key');

  FixedButtonArgs.fixed({Key? key})
      : this.key = key == null ? null : Arg.fixed(key);

  final Arg<Key>? key;

  @override
  List<Arg?> get list => [key];
}
