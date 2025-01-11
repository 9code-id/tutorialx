## 90. Basic Alert

```dart
AlertDialog(
  title: Text('Alert'),
  content: Text('This is a basic alert'),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('OK'),
    ),
  ],
);
```

## 91. Basic Alert with Icon

```dart
AlertDialog(
  title: Row(
    children: [
      Icon(Icons.info, color: Colors.blue),
      SizedBox(width: 10),
      Text('Alert'),
    ],
  ),
  content: Text('This is a basic alert with an icon'),
  actions: [
    TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: Text('OK'),
    ),
  ],
);
```
