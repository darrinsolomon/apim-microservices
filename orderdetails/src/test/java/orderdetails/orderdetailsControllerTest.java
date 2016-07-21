package orderdetails;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockServletContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = MockServletContext.class)
@WebAppConfiguration
public class orderdetailsControllerTest {

	private MockMvc mvc;

	@Before
	public void setUp() throws Exception {
		mvc = MockMvcBuilders.standaloneSetup(new orderdetailsController()).build();
	}

	@Test
	public void getHello() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/").accept(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk())
				.andExpect(content().string(equalTo("<root><Customer><email>stone@meekness.com</email><boughtBook>1984 by George Orwell</boughtBook></Customer><Customer><email>ca-tech@dps.centrin.net.id</email><boughtBook>A Christmas Carol by Charles Dickens</boughtBook></Customer><Customer><email>trinanda_lestyowati@telkomsel.co.id</email><boughtBook>A Tale of Two Cities by Charles Dickens</boughtBook></Customer><Customer><email>asst_dos@astonrasuna.com</email><boughtBook>A Tree Grows in Brooklyn by Betty Smith</boughtBook></Customer><Customer><email>amartabali@dps.centrin.net.id</email><boughtBook>A Wrinkle in Time by Madeleine L'Engle</boughtBook></Customer><Customer><email>achatv@cbn.net.id</email><boughtBook>Animal Farm by George Orwell</boughtBook></Customer><Customer><email>bali@tuguhotels.com</email><boughtBook>Anne of Green Gables by L.M. Montgomery</boughtBook></Customer><Customer><email>baliminimalist@yahoo.com</email><boughtBook>Brave New World by Aldous Huxley </boughtBook></Customer><Customer><email>bliss@thebale.com</email><boughtBook>Charlotte's Web by E.B. White</boughtBook></Customer><Customer><email>adhidharma@denpasar.wasantara.net.id</email><boughtBook>East of Eden by John Steinbeck </boughtBook></Customer><Customer><email>centralreservation@ramayanahotel.com</email><boughtBook>Fahrenheit 451 by Ray Bradbury</boughtBook></Customer><Customer><email>apribadi@balimandira.com</email><boughtBook>Frankenstein by Mary Shelley</boughtBook></Customer><Customer><email>cdagenhart@ifc.org</email><boughtBook>Gone with the Wind by Margaret Mitchell </boughtBook></Customer><Customer><email>dana_supriyanto@interconti.com</email><boughtBook>Hamlet by William Shakespeare</boughtBook></Customer><Customer><email>dos@novotelbali.com</email><boughtBook>Harry Potter and the Deathly Hallows by J.K. Rowling </boughtBook></Customer><Customer><email>daniel@hotelpadma.com</email><boughtBook>Jane Eyre by Charlotte Bronte</boughtBook></Customer><Customer><email>daniel@balibless.com</email><boughtBook>Little Women by Louisa May Alcott </boughtBook></Customer><Customer><email>djoko_p@jayakartahotelsresorts.com</email><boughtBook>Macbeth by William Shakespeare </boughtBook></Customer><Customer><email>expdepot@indosat.net.id</email><boughtBook>Night by Elie Wiesel </boughtBook></Customer><Customer><email>feby.adamsyah@idn.xerox.com</email><boughtBook>Of Mice and Men by John Steinbeck</boughtBook></Customer><Customer><email>christian_rizal@interconti.com</email><boughtBook>Pride and Prejudice by Jane Austen</boughtBook></Customer><Customer><email>singgih93@mailcity.com</email><boughtBook>Romeo and Juliet by William Shakespeare </boughtBook></Customer><Customer><email>idonk_gebhoy@yahoo.com</email><boughtBook>The Adventures of Huckleberry Finn by Mark Twain</boughtBook></Customer><Customer><email>info@houseofbali.com</email><boughtBook>The Adventures of Tom Sawyer by Mark Twain </boughtBook></Customer></root>")));
	}
}
