public class Boss implements IWorker {
    @Override
    public void goToWork() {
        System.out.println("Босс приехал на работу в 12:00");
    }

    @Override
    public void pay() {
        System.out.println("Босс получил 1000");
    }
}
