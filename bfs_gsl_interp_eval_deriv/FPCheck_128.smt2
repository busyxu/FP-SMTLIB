(declare-fun x1_ack!1409 () (_ BitVec 64))
(declare-fun x0_ack!1412 () (_ BitVec 64))
(declare-fun x2_ack!1410 () (_ BitVec 64))
(declare-fun xx_ack!1411 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1412) ((_ to_fp 11 53) x1_ack!1409)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1409) ((_ to_fp 11 53) x2_ack!1410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1409)
                       ((_ to_fp 11 53) x0_ack!1412))
               ((_ to_fp 11 53) x0_ack!1412))
       ((_ to_fp 11 53) x1_ack!1409)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1409)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1409)
                       ((_ to_fp 11 53) x0_ack!1412)))
       ((_ to_fp 11 53) x0_ack!1412)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1410)
                       ((_ to_fp 11 53) x1_ack!1409))
               ((_ to_fp 11 53) x1_ack!1409))
       ((_ to_fp 11 53) x2_ack!1410)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1410)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1410)
                       ((_ to_fp 11 53) x1_ack!1409)))
       ((_ to_fp 11 53) x1_ack!1409)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1409)
                    ((_ to_fp 11 53) x0_ack!1412))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1410)
                    ((_ to_fp 11 53) x1_ack!1409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1411) ((_ to_fp 11 53) x0_ack!1412))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1411) ((_ to_fp 11 53) x2_ack!1410))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1411) ((_ to_fp 11 53) x0_ack!1412))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1411) ((_ to_fp 11 53) x1_ack!1409)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1409) ((_ to_fp 11 53) xx_ack!1411))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1410)
               ((_ to_fp 11 53) x1_ack!1409))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1410)
          ((_ to_fp 11 53) x1_ack!1409))))

(check-sat)
(exit)
