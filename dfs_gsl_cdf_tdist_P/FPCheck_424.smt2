(declare-fun mu_ack!1329 () (_ BitVec 64))
(declare-fun x_ack!1330 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1329) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1330)
               ((_ to_fp 11 53) x_ack!1330))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1329))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1329)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd999999999999a)
                    a!1)
            ((_ to_fp 11 53) #x400a666666666666)))))

(check-sat)
(exit)
