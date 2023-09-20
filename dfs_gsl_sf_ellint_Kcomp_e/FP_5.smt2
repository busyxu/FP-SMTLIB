(declare-fun a_ack!41 () (_ BitVec 64))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!41)
                     ((_ to_fp 11 53) a_ack!41))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!41)
                ((_ to_fp 11 53) a_ack!41))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!41)
                                   ((_ to_fp 11 53) a_ack!41)))
                   ((_ to_fp 11 53) #x3fa2619b1b7df892))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb8beef74a49015)
                         a!1)
                 ((_ to_fp 11 53) #x3fb8beef74a49015))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!41)
                                   ((_ to_fp 11 53) a_ack!41)))
                   ((_ to_fp 11 53) #x3fa2619b1b7df892))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fb8beef74a49015)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3fb8beef74a49015))))

(check-sat)
(exit)
