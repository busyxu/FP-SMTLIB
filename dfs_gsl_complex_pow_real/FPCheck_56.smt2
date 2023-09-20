(declare-fun x1_ack!267 () (_ BitVec 64))
(declare-fun y1_ack!266 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!267) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!267))
        (fp.abs ((_ to_fp 11 53) y1_ack!266))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!266))
          (fp.abs ((_ to_fp 11 53) x1_ack!267)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!266))
          (fp.abs ((_ to_fp 11 53) x1_ack!267)))))

(check-sat)
(exit)
