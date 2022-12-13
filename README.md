## POMODORO-CLI

pomodoro-cli is the simplest possible pomodoro timer.

- Linux
![image](https://user-images.githubusercontent.com/23709916/146772035-9ee0885f-9102-4d96-bc76-6d141e3702c9.png)
- macOS
![image](https://user-images.githubusercontent.com/86282911/194737349-f2b4f840-0371-4090-b348-6ed531a6b97f.png)

**pomodoro-cli will notify you when it's time for a break, or time to focus.**

### Installation

```bash
git clone https://github.com/proffapt/pomodoro-cli
chmod +x install.sh
./install.sh
```

### Examples
* Start a pomodoro timer with 20 minutes of focus time
    ```bash
    pd 20
    ```
* 20 minutes of focus time and 3 minutes of break time
    ```bash
    pd 20 3
    ```
* 20 minutes of focus time, 3 minutes of break time and 10 minutes of long break
    ```bash
    pd 20 3 10
    ```
* 20 minutes of focus time, 3 minutes of break time, 10 minutes of long break and 4 cicles of focus until long break
    ```bash
    pd 20 3 10 4
    ```
* 20 minutes of focus time, 3 minutes of break time, 10 minutes of long break and 4 cycles of focus until long break. Disable Minecraft and Cheese during focus time. You need to enter the name of the apps you would use to start it through the terminal.(separated by commas)
    ```bash
    pd 20 3 10 4 minecraft,cheese
    ```

### Usage

````

Usage: pd [options] focus break long_break breaks_until_long
options -h: display help message
focus Minutes of focus until break | Default = 25
break Minutes of break until focus | Default = 5
long_break Minutes of long break until focus | Default = 15
breaks_until_long Number of breaks until long break | Default = 4
apps_to_kill Apps to kill during focus time | Default = none

````
