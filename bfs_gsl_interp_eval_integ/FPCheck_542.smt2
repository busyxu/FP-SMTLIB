(declare-fun x1_ack!6843 () (_ BitVec 64))
(declare-fun x0_ack!6850 () (_ BitVec 64))
(declare-fun x2_ack!6844 () (_ BitVec 64))
(declare-fun b_ack!6849 () (_ BitVec 64))
(declare-fun a_ack!6848 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6845 () (_ BitVec 64))
(declare-fun y1_ack!6846 () (_ BitVec 64))
(declare-fun y2_ack!6847 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6850) ((_ to_fp 11 53) x1_ack!6843)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6843) ((_ to_fp 11 53) x2_ack!6844)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6843)
                       ((_ to_fp 11 53) x0_ack!6850))
               ((_ to_fp 11 53) x0_ack!6850))
       ((_ to_fp 11 53) x1_ack!6843)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6843)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6843)
                       ((_ to_fp 11 53) x0_ack!6850)))
       ((_ to_fp 11 53) x0_ack!6850)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6844)
                       ((_ to_fp 11 53) x1_ack!6843))
               ((_ to_fp 11 53) x1_ack!6843))
       ((_ to_fp 11 53) x2_ack!6844)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6844)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6844)
                       ((_ to_fp 11 53) x1_ack!6843)))
       ((_ to_fp 11 53) x1_ack!6843)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6843)
                    ((_ to_fp 11 53) x0_ack!6850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6844)
                    ((_ to_fp 11 53) x1_ack!6843))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6848) ((_ to_fp 11 53) b_ack!6849))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6848) ((_ to_fp 11 53) x0_ack!6850))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6849) ((_ to_fp 11 53) x2_ack!6844))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6848) ((_ to_fp 11 53) b_ack!6849))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6848) ((_ to_fp 11 53) x0_ack!6850))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6848) ((_ to_fp 11 53) x1_ack!6843))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6849) ((_ to_fp 11 53) x0_ack!6850))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6849) ((_ to_fp 11 53) x1_ack!6843)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6843) ((_ to_fp 11 53) b_ack!6849))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6843)
                    ((_ to_fp 11 53) x0_ack!6850))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6844)
                    ((_ to_fp 11 53) x1_ack!6843))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6847)
                           ((_ to_fp 11 53) y1_ack!6846))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6844)
                                   ((_ to_fp 11 53) x1_ack!6843)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6846)
                           ((_ to_fp 11 53) y0_ack!6845))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6843)
                                   ((_ to_fp 11 53) x0_ack!6850)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6844)
                                   ((_ to_fp 11 53) x1_ack!6843))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6843)
                                   ((_ to_fp 11 53) x0_ack!6850))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6844)
                                   ((_ to_fp 11 53) x1_ack!6843))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!6847)
                    ((_ to_fp 11 53) y1_ack!6846))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6844)
                    ((_ to_fp 11 53) x1_ack!6843)))
    a!5)))))

(check-sat)
(exit)
