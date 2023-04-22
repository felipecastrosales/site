## 🤩 Want to do

Before I even openly release officially this to community, I already shared it with a few people, as well as already hosted it; and some of them asked me if they could use the model for their own use. And of course, that's why I'm making a point of explaining better how you can make this project yours.

First, Follow the [🤔 How to Use](#-how-to-use) steps.

### Figma
- See file [here](https://www.figma.com/file/gG2B4ZopeGX2Wt0RTkAxkT/Minha-Identidade?node-id=0-1&t=0s6dYkwbOzUOfxJN-0)
- Open project, and duplicate it.
- Change all datas to yours (as images), and export files substituting the originals.

## Project Datas
- If you want to change the tokens (colors etc), you can do it in the `lib/app/core/tokens/app_colors.dart` file.
- To change the texts datas:
  - Open `lib/app/core/l10n/templates` and change the `.arb` files to yours - or update the existing ones.
    - Tip: after you change, you can use the [Chat GPT](https://chat.openai.com/) to convert to other languages - but it's always worth checking the translation.
  - After that, discomment the `synthetic-package: false`, inside the [l10n.yaml](l10n.yaml) file.
  - Now, is only run the command `flutter gen-l10n` to generate the Dart files.
  - And finally, comment the `synthetic-package: false` again, inside the [l10n.yaml](l10n.yaml) file.

## Contact Form
- Related to Contact Form:
  - Create your account inside `emailjs` and make your changes.
  - You can see [this video](https://www.youtube.com/watch?v=9HW3MZ_tsdo), to help you on practice.

## Firebase
- Create your Firebase project, and make your necessary changes.
- Configure all, see the [Firebase CLI](https://firebase.flutter.dev/docs/cli/) to help you with productivity.

### Remote Config

I put the informations of contact form inside the Remote Config, so create this keys with your information inside your Firebase project:

- `service_id`
- `template_id`
- `user_id`
- `to_email`

## Others 

If you want more information or others specific changes, you can open an issue or contact me. I will be happy to help you. :)