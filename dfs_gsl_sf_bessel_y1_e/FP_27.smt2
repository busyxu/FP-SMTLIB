(declare-fun a_ack!238 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x001922d0e5604189))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!238) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!238))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!238))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!238))
       ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!238))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!238)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe45f306dc9c882)
                           ((_ to_fp 11 53) a_ack!238)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!238))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfe45f306dc9c882)
                 ((_ to_fp 11 53) a_ack!238)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe45f306dc9c883)
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!238))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53) a_ack!238)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfe45f306dc9c882)
                           ((_ to_fp 11 53) a_ack!238)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!2
                 (fp.div roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbfe45f306dc9c882)
                         ((_ to_fp 11 53) a_ack!238)))
         (fp.mul roundNearestTiesToEven
                 a!1
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3fe0000000000000)
                         ((_ to_fp 11 53) a_ack!238)))))))

(check-sat)
(exit)
