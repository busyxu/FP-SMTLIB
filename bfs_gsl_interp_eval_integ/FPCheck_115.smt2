(declare-fun x1_ack!1284 () (_ BitVec 64))
(declare-fun x0_ack!1290 () (_ BitVec 64))
(declare-fun x2_ack!1285 () (_ BitVec 64))
(declare-fun b_ack!1289 () (_ BitVec 64))
(declare-fun a_ack!1288 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1286 () (_ BitVec 64))
(declare-fun y2_ack!1287 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1290) ((_ to_fp 11 53) x1_ack!1284)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1284) ((_ to_fp 11 53) x2_ack!1285)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1284)
                       ((_ to_fp 11 53) x0_ack!1290))
               ((_ to_fp 11 53) x0_ack!1290))
       ((_ to_fp 11 53) x1_ack!1284)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1284)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1284)
                       ((_ to_fp 11 53) x0_ack!1290)))
       ((_ to_fp 11 53) x0_ack!1290)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1285)
                       ((_ to_fp 11 53) x1_ack!1284))
               ((_ to_fp 11 53) x1_ack!1284))
       ((_ to_fp 11 53) x2_ack!1285)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1285)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1285)
                       ((_ to_fp 11 53) x1_ack!1284)))
       ((_ to_fp 11 53) x1_ack!1284)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1284)
                    ((_ to_fp 11 53) x0_ack!1290))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1285)
                    ((_ to_fp 11 53) x1_ack!1284))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1288) ((_ to_fp 11 53) b_ack!1289))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1288) ((_ to_fp 11 53) x0_ack!1290))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1289) ((_ to_fp 11 53) x2_ack!1285))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1288) ((_ to_fp 11 53) b_ack!1289))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1288) ((_ to_fp 11 53) x0_ack!1290))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1288) ((_ to_fp 11 53) x1_ack!1284)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1284) ((_ to_fp 11 53) a_ack!1288))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1289) ((_ to_fp 11 53) x1_ack!1284))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1289) ((_ to_fp 11 53) x2_ack!1285)))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!1287 y1_ack!1286))

(check-sat)
(exit)
