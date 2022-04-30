# Conkeww

An easy-to-use UI framework for Eww made specifically 
for the [Axyl distro](https://axyl-os.github.io), inspired by Conky.

# How to Use

In the `conkeww-panes` widget section in `conkeww-panes.yuck`, you can add new sections following this
format:

```scheme
    (conkeww-pane :title "<title>"
                  :color <color>
                  :spacing "<spacing>"
                  :key-css "<css>" (optional)
                  :value-css "<css>" (optional)
                  :text "<Text goes here>"
                 )
```

For example: to say "Hello World":

```scheme
(defwidget conkeww-panes []
  (box :orientation 'v'
       :space-evenly 'false'
       :spacing 10

    (conkeww-pane :title "Hello"
                  :color green
                  :spacing "10px"
                  :text "Hello, world!"
                 )
    )
  )
```

Or to greet the user with their name:

```scheme
(defpoll username :interval "1000000s"
  `whoami`)

(defwidget conkeww-panes []
  (box :orientation 'v'
       :space-evenly 'false'
       :spacing 10

    (conkeww-pane :title "Greetings"
                  :color green
                  :spacing "10px"
                  :text "Hello, ${username!}!"
                 )
    )
  )
```
