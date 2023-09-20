(declare-fun x1_ack!91 () (_ BitVec 64))
(declare-fun y1_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!91) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!91))
        (fp.abs ((_ to_fp 11 53) y1_ack!90))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!90))
          (fp.abs ((_ to_fp 11 53) x1_ack!91)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y1_ack!90))
          (fp.abs ((_ to_fp 11 53) x1_ack!91)))))

(check-sat)
(exit)
