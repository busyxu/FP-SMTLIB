(declare-fun a_ack!1533 () (_ BitVec 32))
(declare-fun b_ack!1532 () (_ BitVec 64))
(assert (not (bvslt a_ack!1533 #x00000000)))
(assert (not (= #x00000000 a_ack!1533)))
(assert (= #x00000001 a_ack!1533))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #xc085eeaad5511c64)))
(assert (fp.leq ((_ to_fp 11 53) b_ack!1532) ((_ to_fp 11 53) #xc024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!1532))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4034000000000000)
                           ((_ to_fp 11 53) b_ack!1532)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4034000000000000)
                                   ((_ to_fp 11 53) b_ack!1532))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4034000000000000)
                 ((_ to_fp 11 53) b_ack!1532)))))

(check-sat)
(exit)
