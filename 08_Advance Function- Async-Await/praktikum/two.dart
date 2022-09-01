List list = [['One', 'Apel'], ['Two', 'Belimbing'], ['Three', 'Ceri']];

main() {
    Map result = { for (var v in list) v[0]: v[1] };
    print(result);
}