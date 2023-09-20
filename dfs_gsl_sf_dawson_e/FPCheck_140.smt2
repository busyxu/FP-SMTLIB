(declare-fun a_ack!187 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!187))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!187))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!187)))
  (fp.abs ((_ to_fp 11 53) a_ack!187))))

(check-sat)
(exit)
