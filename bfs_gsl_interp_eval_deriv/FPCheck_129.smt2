(declare-fun x1_ack!1413 () (_ BitVec 64))
(declare-fun x0_ack!1416 () (_ BitVec 64))
(declare-fun x2_ack!1414 () (_ BitVec 64))
(declare-fun xx_ack!1415 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1416) ((_ to_fp 11 53) x1_ack!1413)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1413) ((_ to_fp 11 53) x2_ack!1414)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1413)
                       ((_ to_fp 11 53) x0_ack!1416))
               ((_ to_fp 11 53) x0_ack!1416))
       ((_ to_fp 11 53) x1_ack!1413)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1413)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1413)
                       ((_ to_fp 11 53) x0_ack!1416)))
       ((_ to_fp 11 53) x0_ack!1416)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1414)
                       ((_ to_fp 11 53) x1_ack!1413))
               ((_ to_fp 11 53) x1_ack!1413))
       ((_ to_fp 11 53) x2_ack!1414)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1414)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1414)
                       ((_ to_fp 11 53) x1_ack!1413)))
       ((_ to_fp 11 53) x1_ack!1413)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1413)
                    ((_ to_fp 11 53) x0_ack!1416))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1414)
                    ((_ to_fp 11 53) x1_ack!1413))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x0_ack!1416))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x2_ack!1414))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x0_ack!1416))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1415) ((_ to_fp 11 53) x1_ack!1413)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1413) ((_ to_fp 11 53) xx_ack!1415))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1414)
               ((_ to_fp 11 53) x1_ack!1413))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!1414)
          ((_ to_fp 11 53) x1_ack!1413))))

(check-sat)
(exit)
