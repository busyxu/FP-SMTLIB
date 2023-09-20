(declare-fun x1_ack!6847 () (_ BitVec 64))
(declare-fun x0_ack!6854 () (_ BitVec 64))
(declare-fun x2_ack!6848 () (_ BitVec 64))
(declare-fun b_ack!6853 () (_ BitVec 64))
(declare-fun a_ack!6852 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6849 () (_ BitVec 64))
(declare-fun y1_ack!6850 () (_ BitVec 64))
(declare-fun y2_ack!6851 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6854) ((_ to_fp 11 53) x1_ack!6847)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6847) ((_ to_fp 11 53) x2_ack!6848)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6847)
                       ((_ to_fp 11 53) x0_ack!6854))
               ((_ to_fp 11 53) x0_ack!6854))
       ((_ to_fp 11 53) x1_ack!6847)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6847)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6847)
                       ((_ to_fp 11 53) x0_ack!6854)))
       ((_ to_fp 11 53) x0_ack!6854)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6848)
                       ((_ to_fp 11 53) x1_ack!6847))
               ((_ to_fp 11 53) x1_ack!6847))
       ((_ to_fp 11 53) x2_ack!6848)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6848)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6848)
                       ((_ to_fp 11 53) x1_ack!6847)))
       ((_ to_fp 11 53) x1_ack!6847)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6847)
                    ((_ to_fp 11 53) x0_ack!6854))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6848)
                    ((_ to_fp 11 53) x1_ack!6847))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6852) ((_ to_fp 11 53) b_ack!6853))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6852) ((_ to_fp 11 53) x0_ack!6854))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6853) ((_ to_fp 11 53) x2_ack!6848))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6852) ((_ to_fp 11 53) b_ack!6853))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6852) ((_ to_fp 11 53) x0_ack!6854))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6852) ((_ to_fp 11 53) x1_ack!6847)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6847) ((_ to_fp 11 53) a_ack!6852))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6853) ((_ to_fp 11 53) x1_ack!6847))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6853) ((_ to_fp 11 53) x2_ack!6848))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6848)
                    ((_ to_fp 11 53) x1_ack!6847))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6851)
                           ((_ to_fp 11 53) y1_ack!6850))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6848)
                                   ((_ to_fp 11 53) x1_ack!6847)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6850)
                           ((_ to_fp 11 53) y0_ack!6849))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6847)
                                   ((_ to_fp 11 53) x0_ack!6854)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6848)
                                   ((_ to_fp 11 53) x1_ack!6847))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6847)
                                   ((_ to_fp 11 53) x0_ack!6854))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6848)
                                   ((_ to_fp 11 53) x1_ack!6847))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6852)
                    ((_ to_fp 11 53) x1_ack!6847))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6853)
                    ((_ to_fp 11 53) x1_ack!6847))))))))

(check-sat)
(exit)
