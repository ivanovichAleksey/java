public class Cleaner implements IWorker {
    @Override
    public void goToWork() {
        System.out.println("Уборшик приехал на работу в 06:00");
    }

    @Override
    public void pay() {
        System.out.println("Уборшик получил 400");
    }
}
