(declare-fun x1_ack!162 () (_ BitVec 64))
(declare-fun y1_ack!161 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!162) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!162))
             (fp.abs ((_ to_fp 11 53) y1_ack!161)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!162))
          (fp.abs ((_ to_fp 11 53) y1_ack!161)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x1_ack!162))
          (fp.abs ((_ to_fp 11 53) y1_ack!161)))))

(check-sat)
(exit)
