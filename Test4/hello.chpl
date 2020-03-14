var lock: atomic bool;
while lock.testAndSet() do chpl_task_yield(); // lock
lock.clear();                                 // release
