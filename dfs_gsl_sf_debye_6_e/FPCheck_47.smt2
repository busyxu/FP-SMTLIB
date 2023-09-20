(declare-fun a_ack!86 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!86) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (FPCHECK_FADD_ACCURACY
  #x4086800000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4086800000000000)
          ((_ to_fp 11 53) a_ack!86))))

(check-sat)
(exit)
