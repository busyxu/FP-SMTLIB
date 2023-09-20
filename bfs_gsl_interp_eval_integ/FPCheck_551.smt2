(declare-fun x1_ack!6953 () (_ BitVec 64))
(declare-fun x0_ack!6960 () (_ BitVec 64))
(declare-fun x2_ack!6954 () (_ BitVec 64))
(declare-fun b_ack!6959 () (_ BitVec 64))
(declare-fun a_ack!6958 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6955 () (_ BitVec 64))
(declare-fun y1_ack!6956 () (_ BitVec 64))
(declare-fun y2_ack!6957 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6960) ((_ to_fp 11 53) x1_ack!6953)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6953) ((_ to_fp 11 53) x2_ack!6954)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6953)
                       ((_ to_fp 11 53) x0_ack!6960))
               ((_ to_fp 11 53) x0_ack!6960))
       ((_ to_fp 11 53) x1_ack!6953)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6953)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6953)
                       ((_ to_fp 11 53) x0_ack!6960)))
       ((_ to_fp 11 53) x0_ack!6960)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6954)
                       ((_ to_fp 11 53) x1_ack!6953))
               ((_ to_fp 11 53) x1_ack!6953))
       ((_ to_fp 11 53) x2_ack!6954)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6954)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6954)
                       ((_ to_fp 11 53) x1_ack!6953)))
       ((_ to_fp 11 53) x1_ack!6953)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6953)
                    ((_ to_fp 11 53) x0_ack!6960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6954)
                    ((_ to_fp 11 53) x1_ack!6953))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6958) ((_ to_fp 11 53) b_ack!6959))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6958) ((_ to_fp 11 53) x0_ack!6960))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6959) ((_ to_fp 11 53) x2_ack!6954))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6958) ((_ to_fp 11 53) b_ack!6959))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6958) ((_ to_fp 11 53) x0_ack!6960))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6958) ((_ to_fp 11 53) x1_ack!6953))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6959) ((_ to_fp 11 53) x0_ack!6960))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6959) ((_ to_fp 11 53) x1_ack!6953)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6953) ((_ to_fp 11 53) b_ack!6959))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6953)
                    ((_ to_fp 11 53) x0_ack!6960))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6954)
                    ((_ to_fp 11 53) x1_ack!6953))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6957)
                           ((_ to_fp 11 53) y1_ack!6956))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6954)
                                   ((_ to_fp 11 53) x1_ack!6953)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6956)
                           ((_ to_fp 11 53) y0_ack!6955))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6953)
                                   ((_ to_fp 11 53) x0_ack!6960)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6954)
                                   ((_ to_fp 11 53) x1_ack!6953))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6953)
                                   ((_ to_fp 11 53) x0_ack!6960))))))
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
                    ((_ to_fp 11 53) x2_ack!6954)
                    ((_ to_fp 11 53) x1_ack!6953)))))))

(check-sat)
(exit)
