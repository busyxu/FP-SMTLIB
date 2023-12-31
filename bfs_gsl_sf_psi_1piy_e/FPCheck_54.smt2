(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x408f400000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!87)
                           ((_ to_fp 11 53) a_ack!87))
                   ((_ to_fp 11 53) #x3cea961904954325))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3da614ea0a67bc29)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3da614ea0a67bc29))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!87)
                           ((_ to_fp 11 53) a_ack!87))
                   ((_ to_fp 11 53) #x3cea961904954325))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3da614ea0a67bc29)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3da614ea0a67bc29)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3da614ea0a67bc29)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   ((_ to_fp 11 53) a_ack!87))
                           ((_ to_fp 11 53) #x3cea961904954325)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbe64a151e0278ccf)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!87)
                                   ((_ to_fp 11 53) a_ack!87))
                           a!1))))
  (FPCHECK_FADD_UNDERFLOW
    #x3f29b202bb4b83ac
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!87)
                    ((_ to_fp 11 53) a_ack!87))
            a!2)))))

(check-sat)
(exit)
