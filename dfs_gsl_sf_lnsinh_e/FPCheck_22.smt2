(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!36)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!36))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!36)
                       ((_ to_fp 11 53) a_ack!36))
               ((_ to_fp 11 53) a_ack!36))
       ((_ to_fp 11 53) a_ack!36)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!36))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!36)
                       ((_ to_fp 11 53) a_ack!36))
               ((_ to_fp 11 53) a_ack!36))
       ((_ to_fp 11 53) a_ack!36)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!36)
                           ((_ to_fp 11 53) a_ack!36))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 ((_ to_fp 11 53) #x3d6ae7f3e733b81f))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!36)
                           ((_ to_fp 11 53) a_ack!36))
                   ((_ to_fp 11 53) #x3ce952c77030ad4a))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3d6ae7f3e733b81f))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3d6ae7f3e733b81f)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!36)
                                   ((_ to_fp 11 53) a_ack!36))
                           ((_ to_fp 11 53) #x3ce952c77030ad4a)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3de6124613a86d09)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!36)
                                   ((_ to_fp 11 53) a_ack!36))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e5ae64567f544e4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!36)
                                   ((_ to_fp 11 53) a_ack!36))
                           a!2))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) a_ack!36)
            ((_ to_fp 11 53) a_ack!36))
    a!3)))))

(check-sat)
(exit)
