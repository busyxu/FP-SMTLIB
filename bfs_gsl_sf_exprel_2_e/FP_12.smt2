(declare-fun a_ack!81 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #xbf60624dd2f1a9fc))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!81) ((_ to_fp 11 53) #x3f60624dd2f1a9fc)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) a_ack!81)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3fc5555555555555)
                 ((_ to_fp 11 53) a_ack!81)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc5555555555555)
                                   ((_ to_fp 11 53) a_ack!81)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fc5555555555555)
                           ((_ to_fp 11 53) a_ack!81)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
