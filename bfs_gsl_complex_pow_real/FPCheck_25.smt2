(declare-fun x1_ack!95 () (_ BitVec 64))
(declare-fun y1_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!95) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!95))
        (fp.abs ((_ to_fp 11 53) y1_ack!94))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!94))
          (fp.abs ((_ to_fp 11 53) x1_ack!95)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!94))
          (fp.abs ((_ to_fp 11 53) x1_ack!95)))))

(check-sat)
(exit)
