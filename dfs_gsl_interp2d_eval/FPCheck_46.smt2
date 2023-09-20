(declare-fun x1_ack!484 () (_ BitVec 64))
(declare-fun x0_ack!488 () (_ BitVec 64))
(declare-fun y0_ack!485 () (_ BitVec 64))
(declare-fun x_ack!486 () (_ BitVec 64))
(declare-fun y_ack!487 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!488) ((_ to_fp 11 53) x1_ack!484))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!485) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!486) ((_ to_fp 11 53) x0_ack!488))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!486) ((_ to_fp 11 53) x1_ack!484))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!487) ((_ to_fp 11 53) y0_ack!485))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!487) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!486) ((_ to_fp 11 53) x0_ack!488))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!486) ((_ to_fp 11 53) x1_ack!484))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!487) ((_ to_fp 11 53) y0_ack!485))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!487) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!484)
                       ((_ to_fp 11 53) x0_ack!488))
               ((_ to_fp 11 53) x0_ack!488))
       ((_ to_fp 11 53) x1_ack!484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!484)
                       ((_ to_fp 11 53) x0_ack!488)))
       ((_ to_fp 11 53) x0_ack!488)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!485))
               ((_ to_fp 11 53) y0_ack!485))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!485)))
       ((_ to_fp 11 53) y0_ack!485)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!486)
                  ((_ to_fp 11 53) x0_ack!488))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!484)
                  ((_ to_fp 11 53) x0_ack!488)))))

(check-sat)
(exit)
