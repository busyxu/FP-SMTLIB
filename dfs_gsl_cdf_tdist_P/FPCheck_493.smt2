(declare-fun mu_ack!1493 () (_ BitVec 64))
(declare-fun x_ack!1494 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!1493) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1494)
                    ((_ to_fp 11 53) x_ack!1494))
            ((_ to_fp 11 53) mu_ack!1493))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!1493)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!1494)
                               ((_ to_fp 11 53) x_ack!1494))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1493)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1494)
                           ((_ to_fp 11 53) x_ack!1494)))))
  (FPCHECK_FDIV_OVERFLOW
    a!1
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
