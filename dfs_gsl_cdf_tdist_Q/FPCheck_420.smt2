(declare-fun mu_ack!1321 () (_ BitVec 64))
(declare-fun x_ack!1322 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1321) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1322)
               ((_ to_fp 11 53) x_ack!1322))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1321))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fd999999999999a
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) mu_ack!1321)
                  ((_ to_fp 11 53) #x3fe0000000000000))
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
