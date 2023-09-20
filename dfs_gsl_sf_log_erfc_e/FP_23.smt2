(declare-fun a_ack!315 () (_ BitVec 64))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!315)
                    ((_ to_fp 11 53) a_ack!315))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!315) ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!315)
                                   ((_ to_fp 11 53) #x3fe20dd750429b62))
                           ((_ to_fp 11 53) #x3ff467e6dad8642a))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!315)
                           ((_ to_fp 11 53) #x3fe20dd750429b62)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff467e6dad8642a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!315)
                                   ((_ to_fp 11 53) #x3fe20dd750429b62))
                           ((_ to_fp 11 53) #x3ff467e6dad8642a))
                   ((_ to_fp 11 53) #x3ff467e6dad8642a))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!315)
                 ((_ to_fp 11 53) #x3fe20dd750429b62)))))

(check-sat)
(exit)
