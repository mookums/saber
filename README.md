# Saber 
Saber is a Real-Time Operating System Kernel for use in time and safety critical settings. Saber is written entirely in Zig and leverages various features to ensure safe and functional design. By default, it uses a Priority Predicate Cooperative Scheduler that allows for desired behavior to be described in an event focused way.

## Zig Version
Saber currently tracks the latest stable version of Zig. This is currently `0.11.0`.

## Structure
Saber currently consists of tasks and chords.
- Predicates are qualifiers for Tasks to be scheduled.
- Clauses are elements that make up a Predicate.
- Tasks are jobs that need to be completed by Saber during runtime.
- Chords are collections of jobs that are run by a scheduler on a processor.
