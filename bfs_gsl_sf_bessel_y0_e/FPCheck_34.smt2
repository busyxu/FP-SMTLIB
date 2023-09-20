(declare-fun a_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!56) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!56) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!56)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!56)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!56))
                           (fp.abs ((_ to_fp 11 53) a_ack!56)))
                   (fp.abs ((_ to_fp 11 53) a_ack!56)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!56)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!56)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!56))
                           (fp.abs ((_ to_fp 11 53) a_ack!56)))
                   (fp.abs ((_ to_fp 11 53) a_ack!56)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!56)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           ((_ to_fp 11 53) a_ack!56))
                   ((_ to_fp 11 53) a_ack!56))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc0000000000000)
                           ((_ to_fp 11 53) a_ack!56))
                   ((_ to_fp 11 53) a_ack!56))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) a_ack!56))
                           ((_ to_fp 11 53) a_ack!56))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1)
    #xbff0000000000000)))

(check-sat)
(exit)
