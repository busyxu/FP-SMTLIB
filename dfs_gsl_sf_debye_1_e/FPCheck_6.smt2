(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4086232bdd7abcd2))))
(assert (fp.geq ((_ to_fp 11 53) #x3ffa51a6625307d3)
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) a_ack!11))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3cb0000000000000
  (fp.abs (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ffa51a6625307d3)
                  ((_ to_fp 11 53) a_ack!11)))))

(check-sat)
(exit)
