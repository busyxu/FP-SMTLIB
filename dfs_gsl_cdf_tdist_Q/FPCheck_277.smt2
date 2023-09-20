(declare-fun mu_ack!1023 () (_ BitVec 64))
(declare-fun x_ack!1024 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1023) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1024)
               ((_ to_fp 11 53) x_ack!1024))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1023))))
(assert (FPCHECK_FMUL_ACCURACY x_ack!1024 x_ack!1024))

(check-sat)
(exit)
