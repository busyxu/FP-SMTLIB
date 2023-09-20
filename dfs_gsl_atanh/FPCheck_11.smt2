(declare-fun a_ack!14 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!14))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!14))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!14))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!14)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!14)))
  (fp.abs ((_ to_fp 11 53) a_ack!14))))

(check-sat)
(exit)
