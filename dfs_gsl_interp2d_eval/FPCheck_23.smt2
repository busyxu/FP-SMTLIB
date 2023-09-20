(declare-fun x1_ack!227 () (_ BitVec 64))
(declare-fun x0_ack!231 () (_ BitVec 64))
(declare-fun y0_ack!228 () (_ BitVec 64))
(declare-fun x_ack!229 () (_ BitVec 64))
(declare-fun y_ack!230 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!231) ((_ to_fp 11 53) x1_ack!227))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!228) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!229) ((_ to_fp 11 53) x0_ack!231))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!229) ((_ to_fp 11 53) x1_ack!227))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!230) ((_ to_fp 11 53) y0_ack!228))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!230) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!229) ((_ to_fp 11 53) x0_ack!231))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!229) ((_ to_fp 11 53) x1_ack!227))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!230) ((_ to_fp 11 53) y0_ack!228))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!230) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!227)
                       ((_ to_fp 11 53) x0_ack!231))
               ((_ to_fp 11 53) x0_ack!231))
       ((_ to_fp 11 53) x1_ack!227)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!227)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!227)
                       ((_ to_fp 11 53) x0_ack!231)))
       ((_ to_fp 11 53) x0_ack!231)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!228))
               ((_ to_fp 11 53) y0_ack!228))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!228)))
       ((_ to_fp 11 53) y0_ack!228)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!229)
                  ((_ to_fp 11 53) x0_ack!231))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!227)
                  ((_ to_fp 11 53) x0_ack!231)))))

(check-sat)
(exit)
