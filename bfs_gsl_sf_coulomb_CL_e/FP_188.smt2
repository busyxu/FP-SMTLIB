(declare-fun a_ack!3273 () (_ BitVec 64))
(declare-fun b_ack!3272 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!3273) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!3273))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!3272)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!3273)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (fp.lt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) b_ack!3272)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.gt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 (fp.abs a!1)
                 (fp.abs ((_ to_fp 11 53) b_ack!3272))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 (fp.abs a!1)
                 (fp.abs ((_ to_fp 11 53) b_ack!3272))))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3273)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs a!1)
                           (fp.abs ((_ to_fp 11 53) b_ack!3272))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!2)
                 a!2)
         ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
