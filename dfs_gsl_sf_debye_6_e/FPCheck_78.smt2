(declare-fun a_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4041acdd632f662a))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x4086232bdd7abcd2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4086800000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           ((_ to_fp 11 53) a_ack!142))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4076800000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4086800000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           ((_ to_fp 11 53) a_ack!142))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4076800000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!142))
                 a!1)
         ((_ to_fp 11 53) a_ack!142))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!142))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x405e000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!142))
                 ((_ to_fp 11 53) a_ack!142))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x403e000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.add roundNearestTiesToEven a!1 a!2)
                         a!3)
                 (fp.add roundNearestTiesToEven a!1 a!2))
         a!3)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142)))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x403e000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         (fp.add roundNearestTiesToEven a!1 a!2)
                         a!3)
                 a!3)
         (fp.add roundNearestTiesToEven a!1 a!2))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!1 a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e000000000000)
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!3)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq (fp.sub roundNearestTiesToEven a!5 a!4)
         (fp.mul roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4018000000000000)
                         a!3)
                 ((_ to_fp 11 53) a_ack!142)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven a!1 a!2)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x403e000000000000)
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!3)
                           ((_ to_fp 11 53) a_ack!142)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!3)
                           ((_ to_fp 11 53) a_ack!142)))))
  (fp.eq a!6 a!4))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4086800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4086800000000000)
                                   ((_ to_fp 11 53) a_ack!142)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4076800000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x405e000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!142)
                                   ((_ to_fp 11 53) a_ack!142)))
                   ((_ to_fp 11 53) a_ack!142)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!142)
                           ((_ to_fp 11 53) a_ack!142)))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven a!1 a!2)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403e000000000000)
                                   a!3))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4018000000000000)
                                   a!3)
                           ((_ to_fp 11 53) a_ack!142)))))
  (FPCHECK_FADD_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            a!3
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!142)
                    ((_ to_fp 11 53) a_ack!142)))))))

(check-sat)
(exit)
