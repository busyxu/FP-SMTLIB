(declare-fun x1_ack!328 () (_ BitVec 64))
(declare-fun x0_ack!332 () (_ BitVec 64))
(declare-fun y0_ack!329 () (_ BitVec 64))
(declare-fun x_ack!330 () (_ BitVec 64))
(declare-fun y_ack!331 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!332) ((_ to_fp 11 53) x1_ack!328))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!329) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x0_ack!332))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x1_ack!328))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) y0_ack!329))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x0_ack!332))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!330) ((_ to_fp 11 53) x1_ack!328))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) y0_ack!329))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!331) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) y_ack!331)
                  ((_ to_fp 11 53) y0_ack!329))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) y0_ack!329)))))

(check-sat)
(exit)
