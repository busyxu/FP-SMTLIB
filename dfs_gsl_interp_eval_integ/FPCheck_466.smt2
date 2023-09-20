(declare-fun x1_ack!5767 () (_ BitVec 64))
(declare-fun x0_ack!5774 () (_ BitVec 64))
(declare-fun x2_ack!5768 () (_ BitVec 64))
(declare-fun b_ack!5773 () (_ BitVec 64))
(declare-fun a_ack!5772 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5769 () (_ BitVec 64))
(declare-fun y1_ack!5770 () (_ BitVec 64))
(declare-fun y2_ack!5771 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5774) ((_ to_fp 11 53) x1_ack!5767)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5767) ((_ to_fp 11 53) x2_ack!5768)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5767)
                       ((_ to_fp 11 53) x0_ack!5774))
               ((_ to_fp 11 53) x0_ack!5774))
       ((_ to_fp 11 53) x1_ack!5767)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5767)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5767)
                       ((_ to_fp 11 53) x0_ack!5774)))
       ((_ to_fp 11 53) x0_ack!5774)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5768)
                       ((_ to_fp 11 53) x1_ack!5767))
               ((_ to_fp 11 53) x1_ack!5767))
       ((_ to_fp 11 53) x2_ack!5768)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5768)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5768)
                       ((_ to_fp 11 53) x1_ack!5767)))
       ((_ to_fp 11 53) x1_ack!5767)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5767)
                    ((_ to_fp 11 53) x0_ack!5774))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5768)
                    ((_ to_fp 11 53) x1_ack!5767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5772) ((_ to_fp 11 53) b_ack!5773))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5772) ((_ to_fp 11 53) x0_ack!5774))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5773) ((_ to_fp 11 53) x2_ack!5768))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5772) ((_ to_fp 11 53) b_ack!5773))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5772) ((_ to_fp 11 53) x0_ack!5774))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5772) ((_ to_fp 11 53) x1_ack!5767)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5767) ((_ to_fp 11 53) a_ack!5772))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5773) ((_ to_fp 11 53) x1_ack!5767))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5773) ((_ to_fp 11 53) x2_ack!5768)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5768)
                    ((_ to_fp 11 53) x1_ack!5767))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5772)
                       ((_ to_fp 11 53) x1_ack!5767))
               ((_ to_fp 11 53) x1_ack!5767))
       ((_ to_fp 11 53) a_ack!5772)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5772)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5772)
                       ((_ to_fp 11 53) x1_ack!5767)))
       ((_ to_fp 11 53) x1_ack!5767)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5772)
                                  ((_ to_fp 11 53) x1_ack!5767)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5772)
                 ((_ to_fp 11 53) x1_ack!5767)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5772)
                                  ((_ to_fp 11 53) x1_ack!5767)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5772)
                 ((_ to_fp 11 53) x1_ack!5767)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5773)
                                  ((_ to_fp 11 53) x1_ack!5767)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5773)
                 ((_ to_fp 11 53) x1_ack!5767)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5773)
                                  ((_ to_fp 11 53) x1_ack!5767)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5773)
                 ((_ to_fp 11 53) x1_ack!5767)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5771)
                           ((_ to_fp 11 53) y1_ack!5770))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5768)
                                   ((_ to_fp 11 53) x1_ack!5767)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5770)
                           ((_ to_fp 11 53) y0_ack!5769))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5767)
                                   ((_ to_fp 11 53) x0_ack!5774)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5768)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5767)
                                   ((_ to_fp 11 53) x0_ack!5774)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5772)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5773)
                           ((_ to_fp 11 53) x1_ack!5767))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5772)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5773)
                                   ((_ to_fp 11 53) x1_ack!5767))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!5772)
                                    ((_ to_fp 11 53) x1_ack!5767))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!5773)
                                    ((_ to_fp 11 53) x1_ack!5767))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!5768)
                           ((_ to_fp 11 53) x1_ack!5767))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4))))
      (a!12 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x2_ack!5768)
                                    ((_ to_fp 11 53) x1_ack!5767))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5771)
                                   ((_ to_fp 11 53) y1_ack!5770))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5768)
                                   ((_ to_fp 11 53) x1_ack!5767)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000))))
      (a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!12)
                            a!7)
                    a!9)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y1_ack!5770)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7))))
(let ((a!11 (fp.add roundNearestTiesToEven
                    a!8
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd5555555555555)
                                    a!4)
                            a!10))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!5773)
            ((_ to_fp 11 53) a_ack!5772))
    (fp.add roundNearestTiesToEven a!11 a!13)))))))))

(check-sat)
(exit)
