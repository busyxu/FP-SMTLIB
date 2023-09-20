(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!53) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!53) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!53) ((_ to_fp 11 53) #x40894cc46ad56a15)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  (fp.div roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4028000000000000)
                  ((_ to_fp 11 53) a_ack!53))
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!53)
                  ((_ to_fp 11 53) #x4010000000000000)))))

(check-sat)
(exit)
