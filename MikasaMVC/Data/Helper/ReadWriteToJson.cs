using MikasaMVC.Data.Base.Interface;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;

namespace MikasaMVC.Data.Helper
{
    public class ReadWriteToJson : IReadWriteToJson
    {
        private readonly string baseDir = Directory.GetCurrentDirectory();
        string path = @"C:\Users\hp\source\repos\Mikasa\EComm.Data\db\";
        
        public async Task<List<T>> ReadJson<T>(string jsonFile)
        {
            var readText = await File.ReadAllTextAsync(path + jsonFile);

            var objects = new List<T>();

            var serializer = new JsonSerializer();

            using (var stringReader = new StringReader(readText))
            using (var jsonReader = new JsonTextReader(stringReader))
            {
                jsonReader.SupportMultipleContent = true;

                while (jsonReader.Read())
                {
                    T json = serializer.Deserialize<T>(jsonReader);

                    objects.Add(json);
                }
            }
            return objects;
        }

        public async Task<bool> UpdateJson<T>(List<T> model, string jsonFile)
        {
            string json = string.Empty;
            foreach (var item in model)
            {
                json += JsonConvert.SerializeObject(item) + Environment.NewLine;
            }
            try
            {
                await File.WriteAllTextAsync(FilePath(baseDir, jsonFile), json);
                return true;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public async Task<bool> WriteJson<T>(T model, string jsonFile)
        {
            try
            {
                string json = JsonConvert.SerializeObject(model) + Environment.NewLine;
                await File.AppendAllTextAsync(path + jsonFile, json);
                return true;
            }
            catch (Exception)
            {

                throw;
            }
        }
        private static string FilePath(string folderName, string fileName)
        {
            folderName += @"/db/";
            if (Directory.Exists(folderName))
            {
                return Path.Combine(folderName, fileName);
            }
            return "";
        }
    }
}
