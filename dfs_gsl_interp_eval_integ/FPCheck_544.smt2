(declare-fun x1_ack!6831 () (_ BitVec 64))
(declare-fun x0_ack!6838 () (_ BitVec 64))
(declare-fun x2_ack!6832 () (_ BitVec 64))
(declare-fun b_ack!6837 () (_ BitVec 64))
(declare-fun a_ack!6836 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6833 () (_ BitVec 64))
(declare-fun y1_ack!6834 () (_ BitVec 64))
(declare-fun y2_ack!6835 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6838) ((_ to_fp 11 53) x1_ack!6831)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6831) ((_ to_fp 11 53) x2_ack!6832)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6831)
                       ((_ to_fp 11 53) x0_ack!6838))
               ((_ to_fp 11 53) x0_ack!6838))
       ((_ to_fp 11 53) x1_ack!6831)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6831)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6831)
                       ((_ to_fp 11 53) x0_ack!6838)))
       ((_ to_fp 11 53) x0_ack!6838)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6832)
                       ((_ to_fp 11 53) x1_ack!6831))
               ((_ to_fp 11 53) x1_ack!6831))
       ((_ to_fp 11 53) x2_ack!6832)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6832)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6832)
                       ((_ to_fp 11 53) x1_ack!6831)))
       ((_ to_fp 11 53) x1_ack!6831)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6831)
                    ((_ to_fp 11 53) x0_ack!6838))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6832)
                    ((_ to_fp 11 53) x1_ack!6831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6836) ((_ to_fp 11 53) b_ack!6837))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6836) ((_ to_fp 11 53) x0_ack!6838))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6837) ((_ to_fp 11 53) x2_ack!6832))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6836) ((_ to_fp 11 53) b_ack!6837))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6836) ((_ to_fp 11 53) x0_ack!6838))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6836) ((_ to_fp 11 53) x1_ack!6831)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6831) ((_ to_fp 11 53) a_ack!6836))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6837) ((_ to_fp 11 53) x1_ack!6831))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6837) ((_ to_fp 11 53) x2_ack!6832))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6832)
                    ((_ to_fp 11 53) x1_ack!6831))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6835)
                           ((_ to_fp 11 53) y1_ack!6834))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6832)
                                   ((_ to_fp 11 53) x1_ack!6831)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6834)
                           ((_ to_fp 11 53) y0_ack!6833))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6831)
                                   ((_ to_fp 11 53) x0_ack!6838)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6832)
                                   ((_ to_fp 11 53) x1_ack!6831))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6831)
                                   ((_ to_fp 11 53) x0_ack!6838))))))
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
                                   ((_ to_fp 11 53) x2_ack!6832)
                                   ((_ to_fp 11 53) x1_ack!6831))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fd0000000000000) a!5)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!6836)
                    ((_ to_fp 11 53) x1_ack!6831))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!6837)
                    ((_ to_fp 11 53) x1_ack!6831))))))))

(check-sat)
(exit)
