(declare-fun mu_ack!36 () (_ BitVec 64))
(declare-fun x_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!36) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!37)
               ((_ to_fp 11 53) x_ack!37))
       ((_ to_fp 11 53) mu_ack!36)))
(assert (FPCHECK_FDIV_ZERO
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!37)
          ((_ to_fp 11 53) x_ack!37))
  mu_ack!36))

(check-sat)
(exit)
