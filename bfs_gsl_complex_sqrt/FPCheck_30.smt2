(declare-fun x_ack!78 () (_ BitVec 64))
(declare-fun y_ack!77 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!78) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!78)) (fp.abs ((_ to_fp 11 53) y_ack!77))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!77))
          (fp.abs ((_ to_fp 11 53) x_ack!78)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!77))
          (fp.abs ((_ to_fp 11 53) x_ack!78)))))

(check-sat)
(exit)
