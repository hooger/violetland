#ifndef VIOLET_SOUNDMANAGER_H_
#define VIOLET_SOUNDMANAGER_H_

#include <boost/filesystem.hpp>

#include "Sound.h"
#include "../Configuration.h"



namespace violet {

class SoundManager {
private:
	bool m_enabled;
	Configuration* m_config;
	FileUtility * m_fileUtility;
public:
	SoundManager(FileUtility* fileUtility, Configuration* config);
	Sound* create(boost::filesystem::path name);
	~SoundManager();
};
}

#endif /* VIOLET_SOUNDMANAGER_H_ */
