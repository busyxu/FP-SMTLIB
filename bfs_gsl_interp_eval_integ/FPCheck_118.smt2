(declare-fun x1_ack!1324 () (_ BitVec 64))
(declare-fun x0_ack!1330 () (_ BitVec 64))
(declare-fun x2_ack!1325 () (_ BitVec 64))
(declare-fun b_ack!1329 () (_ BitVec 64))
(declare-fun a_ack!1328 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1326 () (_ BitVec 64))
(declare-fun y2_ack!1327 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1330) ((_ to_fp 11 53) x1_ack!1324)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1324) ((_ to_fp 11 53) x2_ack!1325)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1324)
                       ((_ to_fp 11 53) x0_ack!1330))
               ((_ to_fp 11 53) x0_ack!1330))
       ((_ to_fp 11 53) x1_ack!1324)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1324)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1324)
                       ((_ to_fp 11 53) x0_ack!1330)))
       ((_ to_fp 11 53) x0_ack!1330)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1325)
                       ((_ to_fp 11 53) x1_ack!1324))
               ((_ to_fp 11 53) x1_ack!1324))
       ((_ to_fp 11 53) x2_ack!1325)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1325)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1325)
                       ((_ to_fp 11 53) x1_ack!1324)))
       ((_ to_fp 11 53) x1_ack!1324)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1324)
                    ((_ to_fp 11 53) x0_ack!1330))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1325)
                    ((_ to_fp 11 53) x1_ack!1324))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1328) ((_ to_fp 11 53) b_ack!1329))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1328) ((_ to_fp 11 53) x0_ack!1330))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) x2_ack!1325))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1328) ((_ to_fp 11 53) b_ack!1329))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1328) ((_ to_fp 11 53) x0_ack!1330))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1328) ((_ to_fp 11 53) x1_ack!1324)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1324) ((_ to_fp 11 53) a_ack!1328))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) x1_ack!1324))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1329) ((_ to_fp 11 53) x2_ack!1325)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1325)
                    ((_ to_fp 11 53) x1_ack!1324))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1327)
          ((_ to_fp 11 53) y1_ack!1326))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1325)
          ((_ to_fp 11 53) x1_ack!1324))))

(check-sat)
(exit)
