(declare-fun x_ack!182 () (_ BitVec 64))
(declare-fun y_ack!181 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!182) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!182))
        (fp.abs ((_ to_fp 11 53) y_ack!181))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!181))
          (fp.abs ((_ to_fp 11 53) x_ack!182)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!181))
          (fp.abs ((_ to_fp 11 53) x_ack!182)))))

(check-sat)
(exit)
