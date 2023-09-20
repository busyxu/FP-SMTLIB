(declare-fun x1_ack!262 () (_ BitVec 64))
(declare-fun x0_ack!266 () (_ BitVec 64))
(declare-fun y0_ack!263 () (_ BitVec 64))
(declare-fun x_ack!264 () (_ BitVec 64))
(declare-fun y_ack!265 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!266) ((_ to_fp 11 53) x1_ack!262))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!263) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!264) ((_ to_fp 11 53) x0_ack!266))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!264) ((_ to_fp 11 53) x1_ack!262))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!265) ((_ to_fp 11 53) y0_ack!263))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!265) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!262)
                       ((_ to_fp 11 53) x0_ack!266))
               ((_ to_fp 11 53) x0_ack!266))
       ((_ to_fp 11 53) x1_ack!262)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!262)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!262)
                       ((_ to_fp 11 53) x0_ack!266)))
       ((_ to_fp 11 53) x0_ack!266)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!263))
               ((_ to_fp 11 53) y0_ack!263))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!263)))
       ((_ to_fp 11 53) y0_ack!263)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!265)
                       ((_ to_fp 11 53) y0_ack!263))
               ((_ to_fp 11 53) y0_ack!263))
       ((_ to_fp 11 53) y_ack!265)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!265)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!265)
                       ((_ to_fp 11 53) y0_ack!263)))
       ((_ to_fp 11 53) y0_ack!263)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!265)
                  ((_ to_fp 11 53) y0_ack!263))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!263)))))

(check-sat)
(exit)
