(declare-fun a_ack!161 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!161) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!161)
          ((_ to_fp 11 53) a_ack!161))))

(check-sat)
(exit)
