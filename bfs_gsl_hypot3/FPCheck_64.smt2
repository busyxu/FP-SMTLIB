(declare-fun c_ack!332 () (_ BitVec 64))
(declare-fun b_ack!331 () (_ BitVec 64))
(declare-fun a_ack!333 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!331))
            (fp.abs ((_ to_fp 11 53) c_ack!332)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!333))
            (fp.abs ((_ to_fp 11 53) c_ack!332)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!331))
            (fp.abs ((_ to_fp 11 53) c_ack!332)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!332))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!332))
          (fp.abs ((_ to_fp 11 53) c_ack!332)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!332))
          (fp.abs ((_ to_fp 11 53) c_ack!332)))))

(check-sat)
(exit)
