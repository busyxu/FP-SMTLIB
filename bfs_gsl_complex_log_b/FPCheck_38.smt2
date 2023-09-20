(declare-fun y1_ack!212 () (_ BitVec 64))
(declare-fun x1_ack!215 () (_ BitVec 64))
(declare-fun y2_ack!214 () (_ BitVec 64))
(declare-fun x2_ack!213 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!215))
             (fp.abs ((_ to_fp 11 53) y1_ack!212)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!213))
             (fp.abs ((_ to_fp 11 53) y2_ack!214)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!213))
          (fp.abs ((_ to_fp 11 53) y2_ack!214)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!213))
          (fp.abs ((_ to_fp 11 53) y2_ack!214)))))

(check-sat)
(exit)
