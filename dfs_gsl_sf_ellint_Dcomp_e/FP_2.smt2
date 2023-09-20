(declare-fun a_ack!18 () (_ BitVec 64))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!18)
                     ((_ to_fp 11 53) a_ack!18))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!18)
                                   ((_ to_fp 11 53) a_ack!18)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!18)
                           ((_ to_fp 11 53) a_ack!18)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!18)
                                   ((_ to_fp 11 53) a_ack!18))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!18)
                 ((_ to_fp 11 53) a_ack!18)))))

(check-sat)
(exit)
