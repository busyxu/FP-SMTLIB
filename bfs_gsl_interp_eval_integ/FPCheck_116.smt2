(declare-fun x1_ack!1298 () (_ BitVec 64))
(declare-fun x0_ack!1304 () (_ BitVec 64))
(declare-fun x2_ack!1299 () (_ BitVec 64))
(declare-fun b_ack!1303 () (_ BitVec 64))
(declare-fun a_ack!1302 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!1300 () (_ BitVec 64))
(declare-fun y2_ack!1301 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1304) ((_ to_fp 11 53) x1_ack!1298)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1298) ((_ to_fp 11 53) x2_ack!1299)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1298)
                       ((_ to_fp 11 53) x0_ack!1304))
               ((_ to_fp 11 53) x0_ack!1304))
       ((_ to_fp 11 53) x1_ack!1298)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1298)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1298)
                       ((_ to_fp 11 53) x0_ack!1304)))
       ((_ to_fp 11 53) x0_ack!1304)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1299)
                       ((_ to_fp 11 53) x1_ack!1298))
               ((_ to_fp 11 53) x1_ack!1298))
       ((_ to_fp 11 53) x2_ack!1299)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1299)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1299)
                       ((_ to_fp 11 53) x1_ack!1298)))
       ((_ to_fp 11 53) x1_ack!1298)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1298)
                    ((_ to_fp 11 53) x0_ack!1304))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1299)
                    ((_ to_fp 11 53) x1_ack!1298))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1302) ((_ to_fp 11 53) b_ack!1303))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1302) ((_ to_fp 11 53) x0_ack!1304))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1303) ((_ to_fp 11 53) x2_ack!1299))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1302) ((_ to_fp 11 53) b_ack!1303))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1302) ((_ to_fp 11 53) x0_ack!1304))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1302) ((_ to_fp 11 53) x1_ack!1298)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1298) ((_ to_fp 11 53) a_ack!1302))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1303) ((_ to_fp 11 53) x1_ack!1298))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1303) ((_ to_fp 11 53) x2_ack!1299)))
(assert (FPCHECK_FSUB_UNDERFLOW y2_ack!1301 y1_ack!1300))

(check-sat)
(exit)
