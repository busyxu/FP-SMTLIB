(declare-fun a_ack!83 () (_ BitVec 64))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!83)) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!83)
                           ((_ to_fp 11 53) a_ack!83))
                   ((_ to_fp 11 53) #x3ca6827863b97d97))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                         a!1)
                 ((_ to_fp 11 53) #x3d2ae7f3e733b81f))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!83)
                           ((_ to_fp 11 53) a_ack!83))
                   ((_ to_fp 11 53) #x3ca6827863b97d97))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3d2ae7f3e733b81f)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3d2ae7f3e733b81f))))

(check-sat)
(exit)
