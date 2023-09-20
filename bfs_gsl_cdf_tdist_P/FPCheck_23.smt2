(declare-fun mu_ack!77 () (_ BitVec 64))
(declare-fun x_ack!78 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!77) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!78)
               ((_ to_fp 11 53) x_ack!78))
       ((_ to_fp 11 53) mu_ack!77)))
(assert (FPCHECK_FDIV_ZERO
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!78)
          ((_ to_fp 11 53) x_ack!78))
  mu_ack!77))

(check-sat)
(exit)
