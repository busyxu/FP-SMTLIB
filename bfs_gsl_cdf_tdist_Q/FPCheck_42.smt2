(declare-fun mu_ack!159 () (_ BitVec 64))
(declare-fun x_ack!160 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!159) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!160)
               ((_ to_fp 11 53) x_ack!160))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!159))))
(assert (FPCHECK_FMUL_UNDERFLOW x_ack!160 x_ack!160))

(check-sat)
(exit)
