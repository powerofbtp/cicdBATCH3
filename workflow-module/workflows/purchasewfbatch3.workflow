{
	"contents": {
		"b5df6a0e-9c76-4b4e-9ba1-1b124c59ffbf": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.wfbatch3.purchasewfbatch3",
			"subject": "purchasewfbatch3",
			"name": "purchasewfbatch3",
			"documentation": "PR workflow for batch3",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"c067b2d7-2900-4691-980b-a238cfb243b1": {
					"name": "UserTask1"
				},
				"820583b9-ee79-492f-b5a5-059e6519670a": {
					"name": "Accept"
				},
				"116e2927-0685-490a-9cd2-e2a38c33239c": {
					"name": "Reject"
				},
				"d7fde716-e2f5-4029-9107-ee978a697c9a": {
					"name": "ExclusiveGateway1"
				},
				"9839be17-043f-424f-bef4-16d0c93d82db": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"aa329525-da19-41a2-8f23-34836e350a4d": {
					"name": "SequenceFlow2"
				},
				"f120385c-02ff-47db-889c-e4e3e2e86bb8": {
					"name": "SequenceFlow3"
				},
				"f4bbaee3-3584-4ab2-8e0c-a9729f63ff16": {
					"name": "accept"
				},
				"f46d334b-8b4b-4c9d-8019-1e0142808ed0": {
					"name": "reject"
				},
				"f686f312-dbdd-4088-b459-806d386932fa": {
					"name": "SequenceFlow6"
				},
				"2e5f2ef4-16c0-4199-b12d-91ebcc2b2a32": {
					"name": "SequenceFlow7"
				},
				"02a6ef2b-e5f7-4bf6-9c2b-7977820a3a00": {
					"name": "SequenceFlow8"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"c067b2d7-2900-4691-980b-a238cfb243b1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "PR for Batch3",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "saptechengineer@gmail.com",
			"formReference": "/forms/purchasewfbatch3/myForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "myform"
			}, {
				"key": "formRevision",
				"value": "V1"
			}],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"820583b9-ee79-492f-b5a5-059e6519670a": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/purchasewfbatch3/accept.js",
			"id": "scripttask1",
			"name": "Accept"
		},
		"116e2927-0685-490a-9cd2-e2a38c33239c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/purchasewfbatch3/reject.js",
			"id": "scripttask2",
			"name": "Reject"
		},
		"d7fde716-e2f5-4029-9107-ee978a697c9a": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "f46d334b-8b4b-4c9d-8019-1e0142808ed0"
		},
		"aa329525-da19-41a2-8f23-34836e350a4d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "c067b2d7-2900-4691-980b-a238cfb243b1"
		},
		"f120385c-02ff-47db-889c-e4e3e2e86bb8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "c067b2d7-2900-4691-980b-a238cfb243b1",
			"targetRef": "d7fde716-e2f5-4029-9107-ee978a697c9a"
		},
		"f4bbaee3-3584-4ab2-8e0c-a9729f63ff16": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"accept\"}",
			"id": "sequenceflow4",
			"name": "accept",
			"sourceRef": "d7fde716-e2f5-4029-9107-ee978a697c9a",
			"targetRef": "820583b9-ee79-492f-b5a5-059e6519670a"
		},
		"f46d334b-8b4b-4c9d-8019-1e0142808ed0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "reject",
			"sourceRef": "d7fde716-e2f5-4029-9107-ee978a697c9a",
			"targetRef": "116e2927-0685-490a-9cd2-e2a38c33239c"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"e97667e0-0d6b-4ddf-96cd-6371e9742a78": {},
				"ce5060a3-d5cd-46ae-9fa7-021b7fc5a096": {},
				"7d9ae40a-a7cf-43c9-8594-7544955c904a": {},
				"d79c664d-ddf7-40e9-a3dc-01a064448576": {},
				"0dc688e7-a176-46c3-ba32-6eea87db5ebb": {},
				"4c8713d7-a881-4033-a412-f94e8fdd051a": {},
				"dde34c91-f19c-492d-904a-c764565513d2": {},
				"cb74c6eb-05e9-45a4-94c9-7f5912ea7564": {},
				"c2235997-7db7-4aea-b511-903119087138": {},
				"d7034c60-ce38-4f0f-9ef7-349702d32c49": {},
				"56be2ce7-f543-4fed-97cc-fe56b62a959d": {},
				"816adaa4-11bf-4fd5-8d2c-7b1966d5bc15": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 55,
			"y": 136,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 747,
			"y": 153,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"e97667e0-0d6b-4ddf-96cd-6371e9742a78": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 152,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "c067b2d7-2900-4691-980b-a238cfb243b1"
		},
		"ce5060a3-d5cd-46ae-9fa7-021b7fc5a096": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "71,152 152.5,152",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e97667e0-0d6b-4ddf-96cd-6371e9742a78",
			"object": "aa329525-da19-41a2-8f23-34836e350a4d"
		},
		"7d9ae40a-a7cf-43c9-8594-7544955c904a": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 418,
			"y": 52,
			"width": 100,
			"height": 60,
			"object": "820583b9-ee79-492f-b5a5-059e6519670a"
		},
		"d79c664d-ddf7-40e9-a3dc-01a064448576": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 413,
			"y": 188,
			"width": 100,
			"height": 60,
			"object": "116e2927-0685-490a-9cd2-e2a38c33239c"
		},
		"0dc688e7-a176-46c3-ba32-6eea87db5ebb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 295,
			"y": 122,
			"object": "d7fde716-e2f5-4029-9107-ee978a697c9a"
		},
		"4c8713d7-a881-4033-a412-f94e8fdd051a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "202,152 273.75,152 273.75,143 295.5,143",
			"sourceSymbol": "e97667e0-0d6b-4ddf-96cd-6371e9742a78",
			"targetSymbol": "0dc688e7-a176-46c3-ba32-6eea87db5ebb",
			"object": "f120385c-02ff-47db-889c-e4e3e2e86bb8"
		},
		"dde34c91-f19c-492d-904a-c764565513d2": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "316,143 377.5,143 377.5,82 418.5,82",
			"sourceSymbol": "0dc688e7-a176-46c3-ba32-6eea87db5ebb",
			"targetSymbol": "7d9ae40a-a7cf-43c9-8594-7544955c904a",
			"object": "f4bbaee3-3584-4ab2-8e0c-a9729f63ff16"
		},
		"cb74c6eb-05e9-45a4-94c9-7f5912ea7564": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "316,143 375,143 375,218 413.5,218",
			"sourceSymbol": "0dc688e7-a176-46c3-ba32-6eea87db5ebb",
			"targetSymbol": "d79c664d-ddf7-40e9-a3dc-01a064448576",
			"object": "f46d334b-8b4b-4c9d-8019-1e0142808ed0"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 8,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2,
			"exclusivegateway": 1
		},
		"9839be17-043f-424f-bef4-16d0c93d82db": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wfDest1",
			"path": "/wfpost",
			"httpMethod": "POST",
			"requestVariable": "${context.data}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"c2235997-7db7-4aea-b511-903119087138": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 576,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "9839be17-043f-424f-bef4-16d0c93d82db"
		},
		"f686f312-dbdd-4088-b459-806d386932fa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "820583b9-ee79-492f-b5a5-059e6519670a",
			"targetRef": "9839be17-043f-424f-bef4-16d0c93d82db"
		},
		"d7034c60-ce38-4f0f-9ef7-349702d32c49": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "468,82 547.25,82 547.25,136 576.5,136",
			"sourceSymbol": "7d9ae40a-a7cf-43c9-8594-7544955c904a",
			"targetSymbol": "c2235997-7db7-4aea-b511-903119087138",
			"object": "f686f312-dbdd-4088-b459-806d386932fa"
		},
		"2e5f2ef4-16c0-4199-b12d-91ebcc2b2a32": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "116e2927-0685-490a-9cd2-e2a38c33239c",
			"targetRef": "9839be17-043f-424f-bef4-16d0c93d82db"
		},
		"56be2ce7-f543-4fed-97cc-fe56b62a959d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "463,218 544.75,218 544.75,168 576.5,168",
			"sourceSymbol": "d79c664d-ddf7-40e9-a3dc-01a064448576",
			"targetSymbol": "c2235997-7db7-4aea-b511-903119087138",
			"object": "2e5f2ef4-16c0-4199-b12d-91ebcc2b2a32"
		},
		"02a6ef2b-e5f7-4bf6-9c2b-7977820a3a00": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "9839be17-043f-424f-bef4-16d0c93d82db",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"816adaa4-11bf-4fd5-8d2c-7b1966d5bc15": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "626,152 711.75,152 711.75,170.5 747.5,170.5",
			"sourceSymbol": "c2235997-7db7-4aea-b511-903119087138",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "02a6ef2b-e5f7-4bf6-9c2b-7977820a3a00"
		}
	}
}