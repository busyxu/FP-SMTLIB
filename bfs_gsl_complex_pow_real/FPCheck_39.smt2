(declare-fun x1_ack!154 () (_ BitVec 64))
(declare-fun y1_ack!153 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!154))
             (fp.abs ((_ to_fp 11 53) y1_ack!153)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!154))
          (fp.abs ((_ to_fp 11 53) y1_ack!153)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!154))
          (fp.abs ((_ to_fp 11 53) y1_ack!153)))))

(check-sat)
(exit)
