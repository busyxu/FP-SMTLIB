(declare-fun a_ack!30 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!30))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!30)
                       ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
               ((_ to_fp 11 53) a_ack!30))
       ((_ to_fp 11 53) #x5fe6a09e667f3bcd)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!30)
                       ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
               ((_ to_fp 11 53) #x5fe6a09e667f3bcd))
       ((_ to_fp 11 53) a_ack!30)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!30)
                           ((_ to_fp 11 53) #x5fe6a09e667f3bcd)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000))
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4030000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!30)
                           ((_ to_fp 11 53) #x5fe6a09e667f3bcd)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3ff0000000000000)))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
