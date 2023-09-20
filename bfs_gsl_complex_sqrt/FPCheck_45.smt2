(declare-fun x_ack!132 () (_ BitVec 64))
(declare-fun y_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!132) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!132))
             (fp.abs ((_ to_fp 11 53) y_ack!131)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!132))
          (fp.abs ((_ to_fp 11 53) y_ack!131)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!132))
          (fp.abs ((_ to_fp 11 53) y_ack!131)))))

(check-sat)
(exit)
