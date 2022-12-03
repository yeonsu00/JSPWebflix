package dao;


import dto.Store;

import java.util.ArrayList;

public class StoreRepository {
    ArrayList<Store> listOfStore = new ArrayList<Store>();
    private static StoreRepository instance = new StoreRepository();

    public StoreRepository() {
        Store store1 = new Store();
        store1.setId("1");
        store1.setName("오리지널팝콘");
        store1.setPrice(4000);
        store1.setFileName("popcorn1.jpg");
        listOfStore.add(store1);

        Store store2 = new Store();
        store2.setId("2");
        store2.setName("코카콜라");
        store2.setPrice(2500);
        store2.setFileName("coke.jpg");
        listOfStore.add(store2);

        Store store3 = new Store();
        store3.setId("3");
        store3.setName("스몰세트");
        store3.setPrice(6000);
        store3.setFileName("small_set.jpg");
        listOfStore.add(store3);

        Store store4 = new Store();
        store4.setId("4");
        store4.setName("더블세트");
        store4.setPrice(6000);
        store4.setFileName("double_set.jpg");
        listOfStore.add(store4);
    }

    public ArrayList<Store> getAllStore() {
        return listOfStore;
    }

    public static StoreRepository getInstance() {
        return instance;
    }

    public Store getStoreById(String storeId) {
        Store storeById = null;
        for (int i = 0; i < listOfStore.size(); i++) {
            Store store = listOfStore.get(i);
            if (store != null && store.getId() != null && store.getId().equals(storeId)) {
                storeById = store;
                break;
            }
        }
        return storeById;
    }
}
