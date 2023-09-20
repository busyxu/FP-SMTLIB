(declare-fun a_ack!109 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!109))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!109))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!109))
       ((_ to_fp 11 53) #x4010000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fc0000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!109)))
  (fp.abs ((_ to_fp 11 53) a_ack!109))))

(check-sat)
(exit)
