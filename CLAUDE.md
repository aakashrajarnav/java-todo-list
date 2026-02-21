# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build & Run

This is a single-file Java console app with no build tool (no Maven/Gradle). The source is in the `todolist` package, so compilation requires the `-d` flag:

```bash
cd src
javac -d . ToDoList.java
java todolist.ToDoList
```

### Docker

```bash
docker build -t java-todolist .
docker run -it java-todolist
```

The `-it` flag is required because the app reads interactive console input via `Scanner`.

## Architecture

Single source file: `src/ToDoList.java` in package `todolist`.

- **`ToDoList`** — main class with static menu-driven loop (add, view, mark complete, delete)
- **`ToDoList.Task`** — inner class holding `description` (String) and `isDone` (boolean)
- **Storage** — in-memory `ArrayList<Task>`, no persistence
- **Input** — `Scanner` on stdin; `getIntInput()` handles non-integer validation

## Notes

- Code uses enhanced switch expressions (`case 1 ->`) which require **JDK 14+** (README says 8+, Dockerfile uses JDK 22)
- No test framework is set up
