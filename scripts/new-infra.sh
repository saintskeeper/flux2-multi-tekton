flux create source git tekton \
    --namespace=tekton \
    --url=https://github.com/saintskeeper/tekton-templates \
    --branch=main \
		--username=${USERNAME} \
		--password=${PASSWORD} \
		--export


flux create source git podinfo \
    --url=ssh://git@github.com/stefanprodan/podinfo \
    --branch=master \
    --private-key-file=/Users/walterday/Git/Flux/tekton-templates/keys/tektonkey
		--export > auth.yaml