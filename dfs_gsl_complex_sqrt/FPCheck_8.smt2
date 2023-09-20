(declare-fun x_ack!19 () (_ BitVec 64))
(declare-fun y_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!19) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!18) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!19))
             (fp.abs ((_ to_fp 11 53) y_ack!18)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!19))
          (fp.abs ((_ to_fp 11 53) y_ack!18)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!19))
          (fp.abs ((_ to_fp 11 53) y_ack!18)))))

(check-sat)
(exit)
