FILENAME=free-haaretz

bump:
	sed -i 's/$(from)/$(to)/g' *

package:
	zip -0 -r $(FILENAME).zip *
	cp $(FILENAME).zip $(FILENAME)-unsigned.xpi

clean:
	rm -f $(FILENAME).zip
	rm -f $(FILENAME)-unsigned.xpi
