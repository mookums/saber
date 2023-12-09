# Saber 
Saber is a Real-Time Operating System Kernel for use in time and safety critical settings. Saber is written entirely in Zig and leverages various features to ensure safe and functional design. By default, it uses a Priority Predicate Cooperative Scheduler that allows for desired behavior to be described in an event focused way.

## Hilt
Hilt is a SVD parser that allows for us to quickly and easily support new board configurations.
It currently generates `registers.zig` files that are usable. It also is intergrated with the vector tables of ARM Cortex-M chips.
When you generate a `registers.zig`, there is a large comment at the bottom of the file that is a set of weak linking provides for your `memory.ld`.
This will eventually be used to create custom `memory.ld` files on demand.

You can use Hilt by using the command `zig build hilt -- YOUR_SVD_HERE.svd > YOUR_REGISTERS_FILE_HERE.zig`.

## Zig Version
Saber currently tracks the latest stable version of Zig. This is currently `0.11.0`.

## Structure
Saber currently consists of tasks and chords.
- Predicates are qualifiers for Tasks to be scheduled.
- Clauses are elements that make up a Predicate.
- Tasks are jobs that need to be completed by Saber during runtime.
- Chords are collections of jobs that are run by a scheduler on a processor.
