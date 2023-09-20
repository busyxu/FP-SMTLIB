(declare-fun x1_ack!1448 () (_ BitVec 64))
(declare-fun x0_ack!1451 () (_ BitVec 64))
(declare-fun x2_ack!1449 () (_ BitVec 64))
(declare-fun xx_ack!1450 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1451) ((_ to_fp 11 53) x1_ack!1448)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1448) ((_ to_fp 11 53) x2_ack!1449)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1448)
                       ((_ to_fp 11 53) x0_ack!1451))
               ((_ to_fp 11 53) x0_ack!1451))
       ((_ to_fp 11 53) x1_ack!1448)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1448)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1448)
                       ((_ to_fp 11 53) x0_ack!1451)))
       ((_ to_fp 11 53) x0_ack!1451)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1449)
                       ((_ to_fp 11 53) x1_ack!1448))
               ((_ to_fp 11 53) x1_ack!1448))
       ((_ to_fp 11 53) x2_ack!1449)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1449)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1449)
                       ((_ to_fp 11 53) x1_ack!1448)))
       ((_ to_fp 11 53) x1_ack!1448)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1448)
                    ((_ to_fp 11 53) x0_ack!1451))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1449)
                    ((_ to_fp 11 53) x1_ack!1448))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1450) ((_ to_fp 11 53) x0_ack!1451))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1450) ((_ to_fp 11 53) x2_ack!1449))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1450) ((_ to_fp 11 53) x0_ack!1451))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1450) ((_ to_fp 11 53) x1_ack!1448)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1448) ((_ to_fp 11 53) xx_ack!1450))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1449)
               ((_ to_fp 11 53) x1_ack!1448))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1449)
          ((_ to_fp 11 53) x1_ack!1448))))

(check-sat)
(exit)
