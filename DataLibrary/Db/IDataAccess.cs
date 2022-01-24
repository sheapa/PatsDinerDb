namespace DataLibrary.Db;

public interface IDataAccess
{
    Task<List<T>> LoadData<T, U>(string storedProcedure, U parameters, string connectionStringName);
    Task<int> SaveData<T>(String storedProcedure, T parameters, string connectionStringName);
}