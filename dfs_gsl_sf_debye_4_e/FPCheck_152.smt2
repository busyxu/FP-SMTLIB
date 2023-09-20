(declare-fun a_ack!215 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!215) ((_ to_fp 11 53) #x4086232bdd7abcd2))))
(assert (fp.geq (fp.abs (fp.div roundNearestTiesToEven
                        ((_ to_fp 11 53) #x4058e2e2562fbb35)
                        ((_ to_fp 11 53) a_ack!215)))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!215))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4058e2e2562fbb35)
                  ((_ to_fp 11 53) a_ack!215))
          ((_ to_fp 11 53) a_ack!215))
  a_ack!215))

(check-sat)
(exit)
