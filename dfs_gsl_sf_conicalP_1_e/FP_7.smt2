(declare-fun b_ack!168 () (_ BitVec 64))
(declare-fun a_ack!169 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!168) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!169) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!168)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!168))))))
  (not (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!168))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!168)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!168)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbed0000000000000)
                                   a!3)))))
  (fp.eq (fp.div roundNearestTiesToEven a!4 a!2)
         (fp.abs (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbed0000000000000)
                         a!3)))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!168)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.abs (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbed0000000000000)
                                   a!1)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!168)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!168)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbed0000000000000)
                                   a!3)))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbed0000000000000)
                                   a!3)))))
  (fp.eq a!5 a!2))))))

(check-sat)
(exit)
