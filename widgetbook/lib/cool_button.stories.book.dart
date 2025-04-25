// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cool_button.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final CoolButtonComponent = LeafComponent<CoolButton, CoolButtonArgs>(
  meta: meta,
  story: $Primary,
);
typedef CoolButtonScenario = Scenario<CoolButton, CoolButtonArgs>;

class CoolButtonStory extends Story<CoolButton, CoolButtonArgs> {
  CoolButtonStory({
    required super.name,
    super.setup,
    CoolButtonArgs? args,
    ArgsBuilder<CoolButton, CoolButtonArgs>? argsBuilder,
  }) : super(
          args: args ?? CoolButtonArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  CoolButton(key: args.key?.resolve(context)),
        );
}

class CoolButtonArgs extends StoryArgs<CoolButton> {
  CoolButtonArgs({Arg<Key>? key}) : this.key = key?.init(name: 'key');

  CoolButtonArgs.fixed({Key? key})
      : this.key = key == null ? null : Arg.fixed(key);

  final Arg<Key>? key;

  @override
  List<Arg?> get list => [key];
}
