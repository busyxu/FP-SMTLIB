(declare-fun mu_ack!45 () (_ BitVec 64))
(declare-fun x_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!45) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!46)
               ((_ to_fp 11 53) x_ack!46))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!45))))
(assert (FPCHECK_FSUB_UNDERFLOW mu_ack!45 #x3fe0000000000000))

(check-sat)
(exit)
