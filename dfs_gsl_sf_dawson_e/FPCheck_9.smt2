(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x3e5399999999999a))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22))
            ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!22)) ((_ to_fp 11 53) #x4186a09e667f3bcc)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!22))
          (fp.abs ((_ to_fp 11 53) a_ack!22)))))

(check-sat)
(exit)
