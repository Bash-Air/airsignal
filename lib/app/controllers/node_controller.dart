import 'package:get/get.dart';
import 'package:meta/meta.dart';

class NodeController extends GetxController {
  final NodeService service;
  NodeController({@required this.service}) : assert(service != null);

  // ignore: deprecated_member_use
  final _postsList = List<MyModel>().obs;
  // ignore: invalid_use_of_protected_member
  get postList => this._postsList.value;
  // ignore: deprecated_member_use, invalid_use_of_protected_member
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