(declare-fun x1_ack!4854 () (_ BitVec 64))
(declare-fun x0_ack!4861 () (_ BitVec 64))
(declare-fun x2_ack!4855 () (_ BitVec 64))
(declare-fun b_ack!4860 () (_ BitVec 64))
(declare-fun a_ack!4859 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4856 () (_ BitVec 64))
(declare-fun y1_ack!4857 () (_ BitVec 64))
(declare-fun y2_ack!4858 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4861) ((_ to_fp 11 53) x1_ack!4854)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4854) ((_ to_fp 11 53) x2_ack!4855)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4854)
                       ((_ to_fp 11 53) x0_ack!4861))
               ((_ to_fp 11 53) x0_ack!4861))
       ((_ to_fp 11 53) x1_ack!4854)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4854)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4854)
                       ((_ to_fp 11 53) x0_ack!4861)))
       ((_ to_fp 11 53) x0_ack!4861)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4855)
                       ((_ to_fp 11 53) x1_ack!4854))
               ((_ to_fp 11 53) x1_ack!4854))
       ((_ to_fp 11 53) x2_ack!4855)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4855)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4855)
                       ((_ to_fp 11 53) x1_ack!4854)))
       ((_ to_fp 11 53) x1_ack!4854)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4854)
                    ((_ to_fp 11 53) x0_ack!4861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4855)
                    ((_ to_fp 11 53) x1_ack!4854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4859) ((_ to_fp 11 53) b_ack!4860))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4859) ((_ to_fp 11 53) x0_ack!4861))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4860) ((_ to_fp 11 53) x2_ack!4855))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4859) ((_ to_fp 11 53) b_ack!4860))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4859) ((_ to_fp 11 53) x0_ack!4861))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4859) ((_ to_fp 11 53) x1_ack!4854))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4860) ((_ to_fp 11 53) x0_ack!4861))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4860) ((_ to_fp 11 53) x1_ack!4854))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4854)
                    ((_ to_fp 11 53) x0_ack!4861))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4858)
                           ((_ to_fp 11 53) y1_ack!4857))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4855)
                                   ((_ to_fp 11 53) x1_ack!4854)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4857)
                           ((_ to_fp 11 53) y0_ack!4856))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4854)
                                   ((_ to_fp 11 53) x0_ack!4861)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4855)
                                   ((_ to_fp 11 53) x1_ack!4854))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4854)
                                   ((_ to_fp 11 53) x0_ack!4861)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4859)
                                   ((_ to_fp 11 53) x0_ack!4861))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4859)
                                   ((_ to_fp 11 53) x0_ack!4861)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4860)
                                   ((_ to_fp 11 53) x0_ack!4861))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4860)
                                   ((_ to_fp 11 53) x0_ack!4861))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4859)
                                   ((_ to_fp 11 53) x0_ack!4861))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4860)
                                   ((_ to_fp 11 53) x0_ack!4861))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4854)
                                   ((_ to_fp 11 53) x0_ack!4861))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4857)
                                   ((_ to_fp 11 53) y0_ack!4856))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4854)
                                   ((_ to_fp 11 53) x0_ack!4861)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!4859)
                                   ((_ to_fp 11 53) x0_ack!4861))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4860)
                                   ((_ to_fp 11 53) x0_ack!4861))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!4856) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
