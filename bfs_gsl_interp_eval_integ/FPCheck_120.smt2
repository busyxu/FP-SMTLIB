(declare-fun x1_ack!1352 () (_ BitVec 64))
(declare-fun x0_ack!1358 () (_ BitVec 64))
(declare-fun x2_ack!1353 () (_ BitVec 64))
(declare-fun b_ack!1357 () (_ BitVec 64))
(declare-fun a_ack!1356 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!1354 () (_ BitVec 64))
(declare-fun y2_ack!1355 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1358) ((_ to_fp 11 53) x1_ack!1352)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1352) ((_ to_fp 11 53) x2_ack!1353)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1352)
                       ((_ to_fp 11 53) x0_ack!1358))
               ((_ to_fp 11 53) x0_ack!1358))
       ((_ to_fp 11 53) x1_ack!1352)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1352)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1352)
                       ((_ to_fp 11 53) x0_ack!1358)))
       ((_ to_fp 11 53) x0_ack!1358)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1353)
                       ((_ to_fp 11 53) x1_ack!1352))
               ((_ to_fp 11 53) x1_ack!1352))
       ((_ to_fp 11 53) x2_ack!1353)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1353)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1353)
                       ((_ to_fp 11 53) x1_ack!1352)))
       ((_ to_fp 11 53) x1_ack!1352)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1352)
                    ((_ to_fp 11 53) x0_ack!1358))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1353)
                    ((_ to_fp 11 53) x1_ack!1352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1356) ((_ to_fp 11 53) b_ack!1357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1356) ((_ to_fp 11 53) x0_ack!1358))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1357) ((_ to_fp 11 53) x2_ack!1353))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1356) ((_ to_fp 11 53) b_ack!1357))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1356) ((_ to_fp 11 53) x0_ack!1358))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!1356) ((_ to_fp 11 53) x1_ack!1352)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1352) ((_ to_fp 11 53) a_ack!1356))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1357) ((_ to_fp 11 53) x1_ack!1352))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1357) ((_ to_fp 11 53) x2_ack!1353)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1353)
                    ((_ to_fp 11 53) x1_ack!1352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!1355)
          ((_ to_fp 11 53) y1_ack!1354))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1353)
          ((_ to_fp 11 53) x1_ack!1352))))

(check-sat)
(exit)
