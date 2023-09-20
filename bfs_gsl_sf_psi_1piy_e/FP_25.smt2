(declare-fun a_ack!255 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!255))
       ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!255)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!255))
                           (fp.abs ((_ to_fp 11 53) a_ack!255)))
                   (fp.abs ((_ to_fp 11 53) a_ack!255)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!255)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!255)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!255))
                           (fp.abs ((_ to_fp 11 53) a_ack!255)))
                   (fp.abs ((_ to_fp 11 53) a_ack!255)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!255)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!255))
                           (fp.abs ((_ to_fp 11 53) a_ack!255))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f81111111111111)
                                   a!1))
                   ((_ to_fp 11 53) #x3fb5555555555555))))
  (fp.eq a!2
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3f81111111111111)
                 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!255))
                           (fp.abs ((_ to_fp 11 53) a_ack!255))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb5555555555555)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3f81111111111111)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3f81111111111111)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3fb5555555555555)))))

(check-sat)
(exit)
