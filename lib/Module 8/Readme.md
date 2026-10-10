# Profile Portfolio UI (Flutter)

A Flutter UI-only application that shows a **profile card** and an **Interests** section. 

## Screenshot

<p align="center">
  <img src="assets/image3.png" alt="Profile Portfolio UI" width="300">
</p>

## Features

- Profile section with image, name, subtitle, bio and contact info
- **Follow** and **Message** buttons
- **Interests** section with two cards (Travel and Photography)
- Each card has an image, title, short description and a **View More** button
- Reusable `InterestCard` widget to avoid repeated code
- Network images, so no extra assets are required for the app itself

## Widgets Used

| Widget | Purpose |
|--------|---------|
| `Scaffold` / `AppBar` | Page structure and title bar |
| `SingleChildScrollView` | Prevents overflow on small screens |
| `Card` | Profile card and interest cards |
| `CircleAvatar` | Round profile picture |
| `Row` / `Column` | Layout |
| `Divider` | Separator lines |
| `ElevatedButton` / `OutlinedButton` | Follow, Message and View More buttons |
| `Image.network` | Card images |




## Author

Monisha Hossain 