(declare-fun a_ack!375 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #x4059000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) a_ack!375) ((_ to_fp 11 53) #xc024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) a_ack!375))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           ((_ to_fp 11 53) a_ack!375)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) a_ack!375))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4034000000000000)
                 ((_ to_fp 11 53) a_ack!375)))))

(check-sat)
(exit)
