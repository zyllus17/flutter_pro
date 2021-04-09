This folder contains [launch.json](https://github.com/zyllus17/flutter_pro/blob/master/.vscode/launch.json) used for setting up `flavors` for different `Environments`.

```json
{
    "version": "0.2.0",
    "configurations": [
        //Configuration for the dev flavor of the app
        {
            "name": "FlutterPro Dev",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_dev.dart",
            "args": [
                "--flavor",
                "dev",
                "--target",
                "lib/main_dev.dart"
            ]
        },
        //Configuration for the QA (staging) flavor of the app
        {
            "name": "FlutterPro QA",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_stage.dart",
            "args": [
                "--flavor",
                "stage",
                "--target",
                "lib/main_stage.dart"
            ]
        },
        //Configuration for the production(deployment) flavor of the app
        {
            "name": "FlutterPro Prod",
            "type": "dart",
            "request": "launch",
            "program": "lib/main_prod.dart",
            "args": [
                "--flavor",
                "prod",
                "--target",
                "lib/main_prod.dart"
            ]
        },
    ]
}
```