(declare-fun mu_ack!67 () (_ BitVec 64))
(declare-fun x_ack!68 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!67) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!68)
               ((_ to_fp 11 53) x_ack!68))
       ((_ to_fp 11 53) mu_ack!67)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!68)
          ((_ to_fp 11 53) x_ack!68))
  mu_ack!67))

(check-sat)
(exit)
