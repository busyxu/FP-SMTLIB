(declare-fun x_ack!74 () (_ BitVec 64))
(declare-fun y_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!74) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!74)) (fp.abs ((_ to_fp 11 53) y_ack!73))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!73))
          (fp.abs ((_ to_fp 11 53) x_ack!74)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y_ack!73))
          (fp.abs ((_ to_fp 11 53) x_ack!74)))))

(check-sat)
(exit)
