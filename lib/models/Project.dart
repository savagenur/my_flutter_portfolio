class Project {
  final String? title, description, url;

  Project({this.title, this.description, this.url});
}

List<Project> demo_projects = [
  Project(
    title: "Quotes, Thoughts Complete App - Flutter UI",
    description:
        "My first app which I made up from scratch using all my knowledge about Dart and Flutter.",
    url: "https://github.com/savagenur/thoughts-flutter"
  ),
  Project(
    title: "MyAnimeWorld App - Flutter UI",
    description:
        "Here I used MyAnimeList API to fulfill project. I tried to make everything exactly as MyAnimeList App.",
    url: "https://github.com/savagenur/my-anime-world"
  ),
  Project(
    title: "ToDo List App Light and Dark Theme - Flutter UI",
    description:
        "By following someone's tutorial you can learn a lot of things. It is example of that.",
    url: "https://github.com/savagenur/my_todo_list"
  ),
  Project(
    title: "Welcome page, Login Page and Sign up page - Flutter UI",
    description: "Every application needs authorization, because it's very useful to safe our data. Even if we lost our device, we can get our data by just signing in to the system.",
    url: "https://github.com/savagenur/auth_app"
  ),
  Project(
    title: "EN-RU Dictionary App - Flutter UI",
    description:
        "Since I love learning new things I decided to create the most useful app for Foreign Programmer such as me. Creating this app was really fun, at the same time it was difficult.",
    url: "https://github.com/savagenur/my_dict_en_ru"
  ),
];
