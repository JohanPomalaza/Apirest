namespace Apirest.Modelos
{
    public class RecaptchaResponse
    {
        public bool success { get; set; }
        public string hostname { get; set; }
        public DateTime challenge_ts { get; set; }

        public string[] error { get; set; }
    }

}
