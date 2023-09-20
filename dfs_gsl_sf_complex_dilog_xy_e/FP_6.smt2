(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun a_ack!121 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) b_ack!120) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x4000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3ff028f5c28f5c29))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!121) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!121)
                       ((_ to_fp 11 53) a_ack!121))
               ((_ to_fp 11 53) a_ack!121))
       ((_ to_fp 11 53) a_ack!121)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!121))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!121)
                       ((_ to_fp 11 53) a_ack!121))
               ((_ to_fp 11 53) a_ack!121))
       ((_ to_fp 11 53) a_ack!121)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!121)
                           ((_ to_fp 11 53) a_ack!121))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!121)
                                   a!1)))))
  (fp.lt a!2 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!121)
                           ((_ to_fp 11 53) a_ack!121))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!121)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   (fp.abs a!1))
                           a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!1)))))
  (fp.eq a!3 a!2)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!121)
                           ((_ to_fp 11 53) a_ack!121))
                   ((_ to_fp 11 53) #x3fd0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!121)
                                   a!1)))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   (fp.abs a!1))
                           a!2)
                   a!2)))
  (fp.eq a!3
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs a!1)))))))

(check-sat)
(exit)
