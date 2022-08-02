const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

    this.on('READ', "materials", async (req) => {

        const materials = await cds.tx(req).run(req.query);
        const materials_final = [];
        // matrials_final = material;

        console.log(materials);

        // for await (final_materials of materials) {
        //     console.log("INSIDE=========>"+final_materials);

        //     // if(final_materials.ernam != 'RAP50') {
        //     //     // continue;
        //     // }

        //     if (final_materials.ernam === 'RAP50')
        //     {
        //         final_materials.ernam = 'PARTHA';
        //     }
        // }   
        
        for (i=0; i<materials.length; i++)
        {
            
            if (materials[i].ernam === 'RAP50')
            {
                materials[i].ernam = 'PARTHA';
                materials_final.push(materials[i])
            }
        }
        
        return materials_final;

    })
})