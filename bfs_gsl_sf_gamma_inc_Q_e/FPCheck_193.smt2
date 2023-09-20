(declare-fun a_ack!540 () (_ BitVec 64))
(declare-fun b_ack!539 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!539) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!539) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!539)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!540)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!540) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!539)
                       ((_ to_fp 11 53) a_ack!540))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!539)
                       ((_ to_fp 11 53) a_ack!540)))
       ((_ to_fp 11 53) a_ack!540)))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!539)
                                   ((_ to_fp 11 53) a_ack!540))
                           ((_ to_fp 11 53) a_ack!540))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!539)
                                   ((_ to_fp 11 53) a_ack!540))
                           ((_ to_fp 11 53) a_ack!540)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!539)
                           ((_ to_fp 11 53) a_ack!540))
                   ((_ to_fp 11 53) a_ack!540))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fbc71c71c71c71c)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbfb999999999999a))))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc2492492492492)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc0000000000000)
                                   a!2)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fc999999999999a)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfc5555555555555)
                                   (fp.mul roundNearestTiesToEven a!1 a!3))))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfd0000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!4))))))
  (FPCHECK_FMUL_ACCURACY
    #xc000000000000000
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbfe0000000000000)
                    (fp.mul roundNearestTiesToEven a!1 a!5))))))))))

(check-sat)
(exit)
