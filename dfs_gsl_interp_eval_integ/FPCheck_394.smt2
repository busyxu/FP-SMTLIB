(declare-fun x1_ack!4835 () (_ BitVec 64))
(declare-fun x0_ack!4842 () (_ BitVec 64))
(declare-fun x2_ack!4836 () (_ BitVec 64))
(declare-fun b_ack!4841 () (_ BitVec 64))
(declare-fun a_ack!4840 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4837 () (_ BitVec 64))
(declare-fun y1_ack!4838 () (_ BitVec 64))
(declare-fun y2_ack!4839 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4842) ((_ to_fp 11 53) x1_ack!4835)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4835) ((_ to_fp 11 53) x2_ack!4836)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4835)
                       ((_ to_fp 11 53) x0_ack!4842))
               ((_ to_fp 11 53) x0_ack!4842))
       ((_ to_fp 11 53) x1_ack!4835)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4835)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4835)
                       ((_ to_fp 11 53) x0_ack!4842)))
       ((_ to_fp 11 53) x0_ack!4842)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4836)
                       ((_ to_fp 11 53) x1_ack!4835))
               ((_ to_fp 11 53) x1_ack!4835))
       ((_ to_fp 11 53) x2_ack!4836)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4836)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4836)
                       ((_ to_fp 11 53) x1_ack!4835)))
       ((_ to_fp 11 53) x1_ack!4835)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4835)
                    ((_ to_fp 11 53) x0_ack!4842))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4836)
                    ((_ to_fp 11 53) x1_ack!4835))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4840) ((_ to_fp 11 53) b_ack!4841))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4840) ((_ to_fp 11 53) x0_ack!4842))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4841) ((_ to_fp 11 53) x2_ack!4836))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4840) ((_ to_fp 11 53) b_ack!4841))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4840) ((_ to_fp 11 53) x0_ack!4842))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4840) ((_ to_fp 11 53) x1_ack!4835)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4835) ((_ to_fp 11 53) a_ack!4840))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4841) ((_ to_fp 11 53) x1_ack!4835))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4841) ((_ to_fp 11 53) x2_ack!4836)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4836)
                    ((_ to_fp 11 53) x1_ack!4835))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4839)
                           ((_ to_fp 11 53) y1_ack!4838))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4836)
                                   ((_ to_fp 11 53) x1_ack!4835)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4838)
                           ((_ to_fp 11 53) y0_ack!4837))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4835)
                                   ((_ to_fp 11 53) x0_ack!4842)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4836)
                                   ((_ to_fp 11 53) x1_ack!4835))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4835)
                                   ((_ to_fp 11 53) x0_ack!4842))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_OVERFLOW
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4836)
                    ((_ to_fp 11 53) x1_ack!4835)))))))

(check-sat)
(exit)
