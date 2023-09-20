(declare-fun x_ack!50 () (_ BitVec 64))
(declare-fun y_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.eq ((_ to_fp 11 53) x_ack!50) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x_ack!50))
             (fp.abs ((_ to_fp 11 53) y_ack!49)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) x_ack!50))
          (fp.abs ((_ to_fp 11 53) y_ack!49)))
  #x7ff8000000000001))

(check-sat)
(exit)
