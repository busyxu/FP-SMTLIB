(declare-fun a_ack!35 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!35)) ((_ to_fp 11 53) #x3fe62e42fefa39ef)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!35) a!1)
                 ((_ to_fp 11 53) a_ack!35))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!35) a!1)
                 a!1)
         ((_ to_fp 11 53) a_ack!35))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!35)
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!35)
                                   a!1))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (fp.gt (fp.abs a!1) a!2))))

(check-sat)
(exit)
