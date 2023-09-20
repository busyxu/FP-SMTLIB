(declare-fun a_ack!13 () (_ BitVec 64))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!13))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!13))
            ((_ to_fp 11 53) #x4000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!13)) ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!13)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   (fp.abs ((_ to_fp 11 53) a_ack!13)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!13)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!13)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   (fp.abs ((_ to_fp 11 53) a_ack!13)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!13)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x3ff0000000000000))
         (fp.mul roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!13))
                 (fp.abs ((_ to_fp 11 53) a_ack!13))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13))))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          a!1
                          ((_ to_fp 11 53) #x40055533356dea3b))
                  (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) a_ack!13))
                          (fp.abs ((_ to_fp 11 53) a_ack!13))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   ((_ to_fp 11 53) #x40055533356dea3b))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!13))
                           (fp.abs ((_ to_fp 11 53) a_ack!13)))
                   a!1)))
  (fp.eq a!2 ((_ to_fp 11 53) #x40055533356dea3b)))))

(check-sat)
(exit)
