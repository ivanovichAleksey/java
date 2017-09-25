public class Worker implements IWorker {
    @Override
    public void goToWork() {
        System.out.println("Рабочий приехал на работу в 08:00");
    }

    @Override
    public void pay() {
        System.out.println("Рабочий получил 500");
    }
}
