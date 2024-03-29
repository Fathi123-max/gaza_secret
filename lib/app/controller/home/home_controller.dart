import 'package:gaza_secret/app/data/repository/posts_repository.dart';
import 'package:gaza_secret/app/routes/app_pages.dart';
import 'package:get/get.dart';

import 'package:meta/meta.dart';

import '../../data/model/model.dart';

class HomeController extends GetxController {
  final MyRepository repository;
  HomeController({required this.repository}) : assert(repository != null);

  final _postsList = List<MyModel>.empty().obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  final _post = MyModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  getAll() {
    repository.getAll().then((data) {
      this.postList = data;
    });
  }

  adicionar(post) {}
  //dismissible
  excluir(id) {}
  //dismissible
  editar() {}
  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
