(declare-fun a_ack!41 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!41))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!41)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!41)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!41))
                           (fp.abs ((_ to_fp 11 53) a_ack!41)))
                   (fp.abs ((_ to_fp 11 53) a_ack!41)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!41)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!41)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!41))
                           (fp.abs ((_ to_fp 11 53) a_ack!41)))
                   (fp.abs ((_ to_fp 11 53) a_ack!41)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!41)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!41))
                           ((_ to_fp 11 53) #x417555556aab555c)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!41)))
                   a!1)))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!41))))))
  (fp.eq a!3 a!1)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!41))
                           ((_ to_fp 11 53) #x417555556aab555c)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!41)))
                   a!1)))
  (fp.eq (fp.sub roundNearestTiesToEven a!2 a!1)
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs ((_ to_fp 11 53) a_ack!41)))))))

(check-sat)
(exit)
