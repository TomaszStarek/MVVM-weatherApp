using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WeatherApp.Model;

namespace WeatherApp.ViewModel.Helpers
{
    public class AccuWeatherHelper
    {
        public const string BASE_URL = "http://dataservice.accuweather.com/";
        public const string AUTOCOMPLETE_ENDPOINT = "locations/v1/cities/autocomplete?apikey={0}&q={1}";
        public const string CURRENT_CONDITION = "currentconditions/v1/{0}?apikey={1}";
        public const string API_KEY = "TjSej8uhahbXq3gAufBNPudauQ9TKAR8";

        public static async Task<List<City>> GetCitiesAsync(string query)
        {
            List<City> cities = new List<City>();

            string url = BASE_URL + string.Format(AUTOCOMPLETE_ENDPOINT, API_KEY, query);

            using (HttpClient client = new HttpClient())
            {
                var response = await client.GetAsync(url);

                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();

                    cities = JsonConvert.DeserializeObject<List<City>>(json);
                }
                else
                    MessageBox.Show($"Problem z odpowiedzią serwera: {response.StatusCode.ToString()}", response.ReasonPhrase);

            }

            return cities;
        }

        public static async Task<CurrentConditions> GetCurrentConditions(string citykey)
        {
            CurrentConditions currentConditions = new CurrentConditions();

            string url = BASE_URL + string.Format(CURRENT_CONDITION, citykey , API_KEY);

            using (HttpClient client = new HttpClient())
            {
                var response = await client.GetAsync(url);


                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();

                    currentConditions = JsonConvert.DeserializeObject<List<CurrentConditions>>(json).FirstOrDefault();
                }
                else
                    MessageBox.Show($"Problem z odpowiedzią serwera: {response.StatusCode.ToString()}", response.ReasonPhrase);
            }

            return currentConditions;
        }
    }
}
