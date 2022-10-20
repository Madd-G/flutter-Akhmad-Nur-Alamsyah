import 'package:practice_27/model/food.dart';
import 'package:practice_27/view_model/foods_provider.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'foods_provider_test.mocks.dart';

@GenerateMocks([FoodProvider])
void main() {
  group('FoodProvider', () {
    FoodProvider mockFoodProvider = MockFoodProvider();

    test('get all foods return data', () async {
      when(mockFoodProvider.fetchData()).thenAnswer((_) async => <Food>[
            Food(1, 'Bakwan'),
          ]);

      var foods = await mockFoodProvider.fetchData();
      expect(foods.isNotEmpty, true);
    });
  });
}
