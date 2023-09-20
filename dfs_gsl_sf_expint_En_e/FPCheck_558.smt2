(declare-fun a_ack!1567 () (_ BitVec 32))
(declare-fun b_ack!1566 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1567 #x00000000)))
(assert (not (= #x00000000 a_ack!1567)))
(assert (not (= #x00000001 a_ack!1567)))
(assert (= #x00000002 a_ack!1567))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1566) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1566) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1566) ((_ to_fp 11 53) #x4059000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1566) ((_ to_fp 11 53) #xc085eeaad5511c64))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1566) ((_ to_fp 11 53) #xc024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!1566))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           ((_ to_fp 11 53) b_ack!1566)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!1566))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4034000000000000)
                 ((_ to_fp 11 53) b_ack!1566)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!1566))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FSUB_ACCURACY a!1 #xbff0000000000000)))

(check-sat)
(exit)
