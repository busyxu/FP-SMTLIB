(declare-fun x1_ack!2696 () (_ BitVec 64))
(declare-fun x0_ack!2700 () (_ BitVec 64))
(declare-fun y0_ack!2697 () (_ BitVec 64))
(declare-fun x_ack!2698 () (_ BitVec 64))
(declare-fun y_ack!2699 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2700) ((_ to_fp 11 53) x1_ack!2696))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2697) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2698) ((_ to_fp 11 53) x0_ack!2700))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2698) ((_ to_fp 11 53) x1_ack!2696))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2699) ((_ to_fp 11 53) y0_ack!2697))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2699) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2696)
                       ((_ to_fp 11 53) x0_ack!2700))
               ((_ to_fp 11 53) x0_ack!2700))
       ((_ to_fp 11 53) x1_ack!2696)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2696)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2696)
                       ((_ to_fp 11 53) x0_ack!2700)))
       ((_ to_fp 11 53) x0_ack!2700)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2697))
               ((_ to_fp 11 53) y0_ack!2697))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2697)))
       ((_ to_fp 11 53) y0_ack!2697)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!2699)
                  ((_ to_fp 11 53) y0_ack!2697))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!2697)))))

(check-sat)
(exit)
