(declare-fun a_ack!155 () (_ BitVec 64))
(declare-fun b_ack!154 () (_ BitVec 64))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!155)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!154)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!155))
       (fp.abs ((_ to_fp 11 53) b_ack!154))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!155))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!154)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154)))
                   (fp.abs ((_ to_fp 11 53) b_ack!154)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!155))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!155))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!154)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!155))
                 (fp.abs ((_ to_fp 11 53) b_ack!154)))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!155))
                 (fp.abs ((_ to_fp 11 53) b_ack!154)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!155))
                           (fp.abs ((_ to_fp 11 53) b_ack!154))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
