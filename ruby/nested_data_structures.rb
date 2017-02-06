fashion_show = {
    tom_ford: {
        haute_coutour: 'Gigi Hadid',
        model_info: {
            height: 5.8,
            star_power: 10
        },
        other_models: [
            'Anna Ewers', 
            'Frederikke Sofie'
        ]
    },
    valentino: {
        haute_coutour: 'Ruth Bell',
        model_info: {
            height: 5.5,
            star_power: 7
        },
        other_models: [
            'Lineisy Montero', 
            'Maarte Verhoef'
        ]
    },
    armani: {
        haute_coutour: 'Sarah Brannon',
        model_info: {
            height: 6.0,
            star_power: 8
        },
        other_models: [
          'Natalie Westling',
          'STANDBY'
        ]
    }
}

p fashion_show[:tom_ford][:haute_coutour]

p fashion_show[:valentino][:other_models][0]