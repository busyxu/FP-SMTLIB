(declare-fun mu_ack!84 () (_ BitVec 64))
(declare-fun x_ack!85 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!85)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!84)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) x_ack!85)
                     ((_ to_fp 11 53) mu_ack!84))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!85)
                                   ((_ to_fp 11 53) mu_ack!84))))))
  (FPCHECK_FDIV_UNDERFLOW
    (CF_exp (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!85)
                    ((_ to_fp 11 53) mu_ack!84)))
    a!1)))

(check-sat)
(exit)
