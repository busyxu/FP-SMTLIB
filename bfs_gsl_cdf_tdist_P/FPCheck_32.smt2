(declare-fun mu_ack!115 () (_ BitVec 64))
(declare-fun x_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!115) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!116)
                    ((_ to_fp 11 53) x_ack!116))
            ((_ to_fp 11 53) mu_ack!115))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!115)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!116)
                               ((_ to_fp 11 53) x_ack!116))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!115)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!116)
                           ((_ to_fp 11 53) x_ack!116)))))
  (FPCHECK_FDIV_ACCURACY
    a!1
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
