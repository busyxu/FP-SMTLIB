(declare-fun a_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!8))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!8))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!8))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!8)) ((_ to_fp 11 53) #x4008000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!8))
          (fp.abs ((_ to_fp 11 53) a_ack!8)))
  #x4012000000000000))

(check-sat)
(exit)
