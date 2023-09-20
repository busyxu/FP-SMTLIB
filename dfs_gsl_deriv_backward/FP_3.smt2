(declare-fun h_ack!44 () (_ BitVec 64))
(declare-fun x_ack!45 () (_ BitVec 64))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x_ack!45)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) h_ack!44))
                           ((_ to_fp 11 53) #x4010000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
