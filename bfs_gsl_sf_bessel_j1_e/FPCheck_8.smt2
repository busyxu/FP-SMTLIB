(declare-fun a_ack!13 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!13))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!13))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!13))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!13)) ((_ to_fp 11 53) #x4010000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   (fp.abs ((_ to_fp 11 53) a_ack!13)))))
  (FPCHECK_FSUB_ACCURACY a!1 #x3ff0000000000000)))

(check-sat)
(exit)
