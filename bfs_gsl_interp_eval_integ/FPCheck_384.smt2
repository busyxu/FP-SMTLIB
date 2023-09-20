(declare-fun x1_ack!4777 () (_ BitVec 64))
(declare-fun x0_ack!4784 () (_ BitVec 64))
(declare-fun x2_ack!4778 () (_ BitVec 64))
(declare-fun b_ack!4783 () (_ BitVec 64))
(declare-fun a_ack!4782 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!4779 () (_ BitVec 64))
(declare-fun y1_ack!4780 () (_ BitVec 64))
(declare-fun y2_ack!4781 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4784) ((_ to_fp 11 53) x1_ack!4777)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4777) ((_ to_fp 11 53) x2_ack!4778)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4777)
                       ((_ to_fp 11 53) x0_ack!4784))
               ((_ to_fp 11 53) x0_ack!4784))
       ((_ to_fp 11 53) x1_ack!4777)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4777)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4777)
                       ((_ to_fp 11 53) x0_ack!4784)))
       ((_ to_fp 11 53) x0_ack!4784)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4778)
                       ((_ to_fp 11 53) x1_ack!4777))
               ((_ to_fp 11 53) x1_ack!4777))
       ((_ to_fp 11 53) x2_ack!4778)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4778)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4778)
                       ((_ to_fp 11 53) x1_ack!4777)))
       ((_ to_fp 11 53) x1_ack!4777)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4777)
                    ((_ to_fp 11 53) x0_ack!4784))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4778)
                    ((_ to_fp 11 53) x1_ack!4777))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4782) ((_ to_fp 11 53) b_ack!4783))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4782) ((_ to_fp 11 53) x0_ack!4784))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4783) ((_ to_fp 11 53) x2_ack!4778))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4782) ((_ to_fp 11 53) b_ack!4783))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4782) ((_ to_fp 11 53) x0_ack!4784))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4782) ((_ to_fp 11 53) x1_ack!4777))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4783) ((_ to_fp 11 53) x0_ack!4784))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4783) ((_ to_fp 11 53) x1_ack!4777))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4777)
                    ((_ to_fp 11 53) x0_ack!4784))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4781)
                           ((_ to_fp 11 53) y1_ack!4780))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4778)
                                   ((_ to_fp 11 53) x1_ack!4777)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4780)
                           ((_ to_fp 11 53) y0_ack!4779))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4777)
                                   ((_ to_fp 11 53) x0_ack!4784)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4778)
                                   ((_ to_fp 11 53) x1_ack!4777))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4777)
                                   ((_ to_fp 11 53) x0_ack!4784))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4777)
                                   ((_ to_fp 11 53) x0_ack!4784))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4780)
                                   ((_ to_fp 11 53) y0_ack!4779))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4777)
                                   ((_ to_fp 11 53) x0_ack!4784)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4782)
                                   ((_ to_fp 11 53) x0_ack!4784))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4783)
                                   ((_ to_fp 11 53) x0_ack!4784))))))
  (FPCHECK_FADD_OVERFLOW y0_ack!4779 a!7)))))))

(check-sat)
(exit)
