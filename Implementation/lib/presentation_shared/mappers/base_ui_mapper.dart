abstract class BaseUIMapper<UIModel, Entity> {
  int row = -1;
  Entity toEntity(UIModel model);
  UIModel toUIModel(Entity entity);

  List<UIModel> toUIList(List<Entity> entities) {
    return entities.map(toUIModel).toList();
  }

  List<Entity> toModelList(List<UIModel> models) {
    return models.map(toEntity).toList();
  }
}
