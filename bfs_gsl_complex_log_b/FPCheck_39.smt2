(declare-fun y1_ack!220 () (_ BitVec 64))
(declare-fun x1_ack!223 () (_ BitVec 64))
(declare-fun y2_ack!222 () (_ BitVec 64))
(declare-fun x2_ack!221 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!223))
             (fp.abs ((_ to_fp 11 53) y1_ack!220)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!221))
             (fp.abs ((_ to_fp 11 53) y2_ack!222)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!221))
          (fp.abs ((_ to_fp 11 53) y2_ack!222)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x2_ack!221))
          (fp.abs ((_ to_fp 11 53) y2_ack!222)))))

(check-sat)
(exit)
