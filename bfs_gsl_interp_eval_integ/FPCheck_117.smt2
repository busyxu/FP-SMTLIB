(declare-fun x1_ack!1312 () (_ BitVec 64))
(declare-fun x0_ack!1318 () (_ BitVec 64))
(declare-fun x2_ack!1313 () (_ BitVec 64))
(declare-fun b_ack!1317 () (_ BitVec 64))
(declare-fun a_ack!1316 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1314 () (_ BitVec 64))
(declare-fun y2_ack!1315 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1318) ((_ to_fp 11 53) x1_ack!1312)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1312) ((_ to_fp 11 53) x2_ack!1313)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1312)
                       ((_ to_fp 11 53) x0_ack!1318))
               ((_ to_fp 11 53) x0_ack!1318))
       ((_ to_fp 11 53) x1_ack!1312)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1312)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1312)
                       ((_ to_fp 11 53) x0_ack!1318)))
       ((_ to_fp 11 53) x0_ack!1318)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1313)
                       ((_ to_fp 11 53) x1_ack!1312))
               ((_ to_fp 11 53) x1_ack!1312))
       ((_ to_fp 11 53) x2_ack!1313)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1313)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1313)
                       ((_ to_fp 11 53) x1_ack!1312)))
       ((_ to_fp 11 53) x1_ack!1312)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1312)
                    ((_ to_fp 11 53) x0_ack!1318))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1313)
                    ((_ to_fp 11 53) x1_ack!1312))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1316) ((_ to_fp 11 53) b_ack!1317))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1316) ((_ to_fp 11 53) x0_ack!1318))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1317) ((_ to_fp 11 53) x2_ack!1313))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1316) ((_ to_fp 11 53) b_ack!1317))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1316) ((_ to_fp 11 53) x0_ack!1318))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1316) ((_ to_fp 11 53) x1_ack!1312)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1312) ((_ to_fp 11 53) a_ack!1316))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1317) ((_ to_fp 11 53) x1_ack!1312))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1317) ((_ to_fp 11 53) x2_ack!1313)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!1315 y1_ack!1314))

(check-sat)
(exit)
