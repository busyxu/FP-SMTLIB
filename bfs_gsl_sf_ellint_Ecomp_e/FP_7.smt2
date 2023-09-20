(declare-fun a_ack!47 () (_ BitVec 64))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!47)
                     ((_ to_fp 11 53) a_ack!47))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!47)
                ((_ to_fp 11 53) a_ack!47))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa85b9906e45829)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!47)
                                   ((_ to_fp 11 53) a_ack!47))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb006f296ee960c)
                         a!1)
                 ((_ to_fp 11 53) #x3fb006f296ee960c))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fa85b9906e45829)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!47)
                                   ((_ to_fp 11 53) a_ack!47))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb006f296ee960c)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fb006f296ee960c))))

(check-sat)
(exit)
