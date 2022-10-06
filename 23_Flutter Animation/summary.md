# **(22) Flutter State Management (BLoC)**

## Nama: Akhmad Nur Alamsyah
&nbsp;

# Flutter Animation

## Animation
Animasi membuat aplikasi terlihat hidup karena widget yang bergerak menambah daya tarik. 

## Implicit Animation
Implicit animation merupakan versi animasi dari widget yang sudah ada.

    bool isBig = false;

    AnimatedContainer(
        width: isBig ? 200 : 100,
        height: isBig ? 200 : 100,
        color: Colors.red,
        duration: const Duration(milliseconds: 300),
    );

## Transition
Transition merupakan animasi yang terjadi saat perpindahan halaman, dilakukan pada bagian <code>Navigator.push()</code>.

    Navigator.of(context).push(
        PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
                return const NextScreen();
            },

            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);

                return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                );
            },
        ),
    );

## Transition Umum

* Fade Transition
    
    Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh.

        final tween = Tween(begin: 0.0, end: 1.0);
        return FadeTransition(
            opacity: animation.drive(tween),
            child: child,
        );

* Scale Transition

    Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan.

        final tween = Tween(begin: 0.0, end: 1.0);
        return ScaleTransition(
            scale: animation.drive(tween),
            child: child,
        );