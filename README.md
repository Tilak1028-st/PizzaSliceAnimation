# SwiftUI Pizza Slice Animation

This SwiftUI project showcases an engaging animation of a pizza being assembled slice by slice. The animation is perfect for food delivery apps, restaurant interfaces, or any food-related application where you want to add a delightful visual element.

## Features

- Animated appearance of individual pizza slices
- Whole pizza scaling effect after assembly
- Typewriter-style text animation for "The Pizza" title
- Smooth animations for a captivating user experience

## Preview
![SimulatorScreenRecording-iPhone15-2024-07-30at20 58 37-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/a754ecf4-88a6-494f-bee3-fef0440e2672)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Tilak1028-st/PizzaSliceAnimation.git
   ```

2. Open the project in Xcode:
   ```bash
   cd PizzaSliceAnimation
   open PizzaSliceAnimation.xcodeproj
   ```

3. Build and run the project on the simulator or a physical device.

## How it Works

The pizza slice animation is created using SwiftUI's built-in animation capabilities and custom timing logic.

- **Pizza Slice Animation**: Each slice of the pizza appears with a slight delay, creating the illusion of the pizza being assembled.
- **Scaling Effect**: Once all slices are in place, the entire pizza scales up and then back down for a playful effect.
- **Typewriter Text**: The "The Pizza" text appears letter by letter, simulating a typing effect.

### Key Components:

1. `PizzaView`: Handles the animation of individual pizza slices and the overall scaling effect.
2. `ContentView`: Manages the layout and includes the typewriter text animation for "The Pizza" title.

## Usage in Food Apps

This animation can be easily integrated into various parts of a food app:

- As a loading screen while waiting for order confirmation
- On the menu page when a user selects a pizza
- As a playful animation on the order successful screen

## Customization

You can easily customize the animation by modifying the following:

- Change the pizza slice images in the `Assets` folder
- Adjust animation timings in `PizzaView` and `ContentView`
- Modify the text or font in `ContentView`

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Enjoy adding this tasty animation to your food app! 🍕✨
