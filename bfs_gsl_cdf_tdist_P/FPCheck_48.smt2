(declare-fun mu_ack!183 () (_ BitVec 64))
(declare-fun x_ack!184 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!183) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!184)
               ((_ to_fp 11 53) x_ack!184))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!183))))
(assert (FPCHECK_FDIV_ZERO
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!184)
          ((_ to_fp 11 53) x_ack!184))
  mu_ack!183))

(check-sat)
(exit)
