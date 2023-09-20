(declare-fun x1_ack!18 () (_ BitVec 64))
(declare-fun y1_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!18) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!18))
             (fp.abs ((_ to_fp 11 53) y1_ack!17)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!18))
          (fp.abs ((_ to_fp 11 53) y1_ack!17)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!18))
          (fp.abs ((_ to_fp 11 53) y1_ack!17)))))

(check-sat)
(exit)
