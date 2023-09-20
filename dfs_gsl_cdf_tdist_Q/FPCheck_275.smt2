(declare-fun mu_ack!1015 () (_ BitVec 64))
(declare-fun x_ack!1016 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1015) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1016)
               ((_ to_fp 11 53) x_ack!1016))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1015))))
(assert (FPCHECK_FMUL_OVERFLOW x_ack!1016 x_ack!1016))

(check-sat)
(exit)
