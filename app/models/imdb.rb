class IMDB

  def self.all
    @data ||= [
      {
        id: '1',
        price: 1295,
        year: 1981,
        mpaa: 'PG',
        title: 'Raiders of the Lost Ark',
        poster_url: 'raiders.jpg',
        plot: 'Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'
      },
      {
        id: '3',
        price: 6295,
        year: 1995,
        mpaa: 'PG',
        title: 'Apollo 13',
        poster_url: 'apollo13.jpg',
        plot: 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.'
      },
      {
        id: '4',
        price: 1295,
        year: 2000,
        mpaa: 'PG-13',
        title: 'Cast Away',
        poster_url: 'castaway.jpg',
        plot: 'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.'
      },
      {
        id: '5',
        title: "Jurassic Park",
        poster_url: "jurassic.jpg",
        plot: "In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park's mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt.",
        year: 1993,
        mpaa: "PG-13",
        price: 1999
      },
      {
        id: '8',
        title: "A Beautiful Mind",
        poster_url: "mind.jpg",
        plot: "A human drama inspired by events in the life of John Forbes Nash Jr., and in part based on the biography \"A Beautiful Mind\" by Sylvia Nasar. From the heights of notoriety to the depths of depravity, John Forbes Nash Jr. experienced it all. A mathematical genius, he made an astonishing discovery early in his career and stood on the brink of international acclaim. But the handsome and arrogant Nash soon found himself on a painful and harrowing journey of self-discovery.",
        year: 2001,
        mpaa: "PG-13",
        price: 1499
      },
      {
        id: '9',
        title: "Lincoln",
        poster_url: "lincoln.jpg",
        plot: "With the nation embroiled in still another year with the high death count of Civil War, President Abraham Lincoln (Daniel Day-Lewis) brings the full measure of his passion, humanity and political skill to what would become his defining legacy: to end the war and permanently abolish slavery through the 13th Amendment. Having great courage, acumen and moral fortitude, Lincoln pushes forward to compel the nation, and those in government who oppose him, to aim toward a greater good for all mankind.",
        year: 2012,
        mpaa: "PG-13",
        runtime: 170,
        price: 1863
      }
    ]
  end

  def self.find(id)
    all.detect { |m| m[:id] == id.to_s }
  end

end
