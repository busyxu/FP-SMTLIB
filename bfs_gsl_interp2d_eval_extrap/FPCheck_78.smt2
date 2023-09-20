(declare-fun x1_ack!780 () (_ BitVec 64))
(declare-fun x0_ack!784 () (_ BitVec 64))
(declare-fun y0_ack!781 () (_ BitVec 64))
(declare-fun x_ack!782 () (_ BitVec 64))
(declare-fun y_ack!783 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!784) ((_ to_fp 11 53) x1_ack!780))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!781) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!782) ((_ to_fp 11 53) x0_ack!784))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!782) ((_ to_fp 11 53) x1_ack!780)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!783) ((_ to_fp 11 53) y0_ack!781))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!783) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x_ack!782)
                  ((_ to_fp 11 53) x0_ack!784))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!780)
                  ((_ to_fp 11 53) x0_ack!784)))))

(check-sat)
(exit)
