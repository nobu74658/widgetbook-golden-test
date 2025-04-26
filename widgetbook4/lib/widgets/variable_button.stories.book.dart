// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_button.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

final VariableButtonComponent =
    LeafComponent<VariableButton, VariableButtonArgs>(
  meta: meta,
  story: $Primary,
);
typedef VariableButtonScenario = Scenario<VariableButton, VariableButtonArgs>;

class VariableButtonStory extends Story<VariableButton, VariableButtonArgs> {
  VariableButtonStory({
    required super.name,
    super.setup,
    VariableButtonArgs? args,
    ArgsBuilder<VariableButton, VariableButtonArgs>? argsBuilder,
  }) : super(
          args: args ?? VariableButtonArgs(),
          argsBuilder: argsBuilder ??
              (
                context,
                args,
              ) =>
                  VariableButton(
                    key: args.key?.resolve(context),
                    text: args.text.resolve(context),
                  ),
        );
}

class VariableButtonArgs extends StoryArgs<VariableButton> {
  VariableButtonArgs({
    Arg<Key>? key,
    Arg<String> text = const StringArg(''),
  })  : this.key = key?.init(name: 'key'),
        this.text = text.init(name: 'text');

  VariableButtonArgs.fixed({
    Key? key,
    String text = '',
  })  : this.key = key == null ? null : Arg.fixed(key),
        this.text = Arg.fixed(text);

  final Arg<Key>? key;

  final Arg<String> text;

  @override
  List<Arg?> get list => [
        key,
        text,
      ];
}
