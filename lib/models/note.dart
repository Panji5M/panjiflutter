
import 'package:flutter/rendering.dart';

class Note {

	int _id;
	String _title;
	String _description;
  String _tanggallahir;
  String _telepon;
  String _alamat;
  String _email;
	String _date;
	int _priority;

  String tanggalahir;

	Note(this._title, this._date, this._priority, [this._description]);

	Note.withId(this._id, this._title, this._date, this._priority, [this._description]);

	int get id => _id;

	String get title => _title;

	String get description => _description;

  String get tanggallahir => _tanggallahir;

  String get telepon => _telepon;

  String get alamat => _alamat;

  String get email => _email;

	int get priority => _priority;

	String get date => _date;

	set title(String newTitle) {
		if (newTitle.length <= 255) {
			this._title = newTitle;
		}
	}

	set description(String newDescription) {
		if (newDescription.length <= 255) {
			this._description = newDescription;
		}
	}

  set tanggallahir(String newTanggallahir) {
    if (newTanggallahir.length <= 255) {
      this._tanggallahir = newTanggallahir;
    }
  }

  set telepon(String newTelepon) {
		if (newTelepon.length <= 255) {
			this._telepon = newTelepon;
		}
	}

  set alamat(String newAlamat) {
		if (newAlamat.length <= 255) {
			this._alamat = newAlamat;
		}
	}

  set email(String newEmail) {
		if (newEmail.length <= 255) {
			this._email = newEmail;
		}
	}  

	set priority(int newPriority) {
		if (newPriority >= 1 && newPriority <= 2) {
			this._priority = newPriority;
		}
	}

	set date(String newDate) {
		this._date = newDate;
	}

	// Convert a Note object into a Map object
	Map<String, dynamic> toMap() {

		var map = Map<String, dynamic>();
		if (id != null) {
			map['id'] = _id;
		}
		map['title'] = _title;
		map['description'] = _description;
		map['priority'] = _priority;
		map['date'] = _date;

		return map;
	}

	// Extract a Note object from a Map object
	Note.fromMapObject(Map<String, dynamic> map) {
		this._id = map['id'];
		this._title = map['title'];
		this._description = map['description'];
		this._priority = map['priority'];
		this._date = map['date'];
	}
}