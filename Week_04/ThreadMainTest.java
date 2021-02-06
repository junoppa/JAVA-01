package jike;

import java.util.List;
import java.util.concurrent.*;

/**
 * @Auther: junoppa
 * @Date: 2021/2/5 19:09
 * @Description:
 */
public class ThreadMainTest {

    private static ExecutorService executorService = Executors.newFixedThreadPool(1);

    public static void main(String[] args) {
        long start = System.currentTimeMillis();

       
        int result = newThread();
        
//      int result = completionMethod();
        
//      int result = semaphoreMethod();
        
//      int result = countDownMethod();
        
//      int result = cyclicBarrierMethod();
       
//      int result = newThreadPoolOne();
        
//      int result = newThreadPoolTwo();
     
//      int result = completableFutureMethodOne();
      
//      int result = completableFutureMethodTwo();
      
//      int result = futureTaskMethodOne();
      
//      int result = futureTaskMethodTwo();

        // 确保  拿到result 并输出
        System.out.println("异步计算结果为：" + result);

        System.out.println("使用时间：" + (System.currentTimeMillis() - start) + " ms");
    }

    private static int completionMethod() {
        try {
            BlockingQueue bq = new ArrayBlockingQueue(1);
            CompletionService cs = new ExecutorCompletionService(executorService, bq);
            cs.submit(() -> sum());
            Future future = cs.poll(1000, TimeUnit.MILLISECONDS);
            if (future != null) {
                return (Integer) future.get();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int futureTaskMethodTwo() {
        try {
            FutureTask futureTask = new FutureTask(() -> sum());
            executorService.execute(futureTask);
            return (Integer) futureTask.get();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int futureTaskMethodOne() {
        try {
            FutureTask futureTask = new FutureTask(() -> sum());
            new Thread(futureTask).start();
            return (Integer) futureTask.get();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }

    private static int completableFutureMethodTwo() {
        CompletableFuture<Integer> future = CompletableFuture.supplyAsync(() -> sum(), executorService);
        try {
            Integer result = future.get();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int completableFutureMethodOne() {
        List<Integer> list = new CopyOnWriteArrayList<>();
        CompletableFuture<Void> future = CompletableFuture.runAsync(() -> {
            list.add(sum());
        }, executorService);
        try {
            future.get();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return list.get(0);
    }

    private static int semaphoreMethod() {
        Semaphore semaphore = new Semaphore(1);
        try {
            Future<Integer> future = executorService.submit(() -> {
                try {
                    semaphore.acquire();
                    int sum = sum();
                    semaphore.release();
                    return sum;
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return -1;
            });
            return future.get();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int cyclicBarrierMethod() {
        try {
            CyclicBarrier cyclicBarrier = new CyclicBarrier(1);
            Future<Integer> future = executorService.submit(() -> {
                try {
                    int sum = sum();
                    cyclicBarrier.await();
                    return sum;
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return -1;
            });
            return future.get();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int countDownMethod() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        try {
            List<Integer> result = new CopyOnWriteArrayList<>();
            executorService.execute(() -> {
                result.add(sum());
                countDownLatch.countDown();
            });
            countDownLatch.await();
            return result.get(0);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int newThreadPoolTwo() {
        try {
            List<Integer> list = new CopyOnWriteArrayList<>();
            executorService.execute(() -> list.add(sum()));
            Thread.sleep(1000);
            return list.get(0);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int newThreadPoolOne() {
        try {
            Future<Integer> future = executorService.submit(() -> sum());
            return future.get();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
        return -1;
    }

    private static int newThread() {
        List<Integer> list = new CopyOnWriteArrayList<>();
        try {
            Thread thread = new Thread(() -> list.add(sum()));
            thread.start();
            thread.join();
            return list.get(0);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return -1;
    }

    private static int sum() {
        return fibo(36);
    }

    private static int fibo(int a) {
        if (a < 2)
            return 1;
        return fibo(a - 1) + fibo(a - 2);
    }
}