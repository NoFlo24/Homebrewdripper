//Test that the load recipes gives you the data you expect
//this should be dependent on the recipes that you actually want to have in the app

import 'package:homebrew_dripper/models/coffee_recipe.dart';
import 'package:homebrew_dripper/models/coffee_resource.dart';
import 'package:homebrew_dripper/models/recipe_step.dart';
import 'package:test/test.dart';
import 'package:homebrew_dripper/utils/coffee_data.dart';

void main() {
  test('loadRecipes should give back the recipes in my app', () {
    List<CoffeeRecipe> recipes = CoffeeData.loadRecipes();

    // add whatever tests help give you confidence
    expect(recipes[0], isA<CoffeeRecipe>());
    expect(recipes[0].name, "Sweet Maria's");
    expect(recipes[0].steps, isA<List<RecipeStep>>());
  });

  test('loadResources should give back the resources in my app', () {
    List<CoffeeResource> resource = CoffeeResources.loadResources();

    expect(resource[0], isA<CoffeeResource>());
    expect(resource[0].name, "Coffee");
    expect(resource[0].link, "https://en.wikipedia.org/wiki/Coffee");

    expect(resource[3], isA<CoffeeResource>());
    expect(resource[3].name, "Homebrew Dripper");
    expect(resource[3].link,
        "https://www.amazon.com/Hario-V60-Starter-Dripper-Filters/dp/B00JJIOJ7E/ref=asc_df_B00JJIOJ7E/?tag=hyprod-20&linkCode=df0&hvadid=234628061491&hvpos=&hvnetw=g&hvrand=3724838311908709463&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1026373&hvtargid=pla-393286005271&psc=1");
  });
}
