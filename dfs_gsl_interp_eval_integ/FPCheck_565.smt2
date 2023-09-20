(declare-fun x1_ack!7092 () (_ BitVec 64))
(declare-fun x0_ack!7099 () (_ BitVec 64))
(declare-fun x2_ack!7093 () (_ BitVec 64))
(declare-fun b_ack!7098 () (_ BitVec 64))
(declare-fun a_ack!7097 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7094 () (_ BitVec 64))
(declare-fun y1_ack!7095 () (_ BitVec 64))
(declare-fun y2_ack!7096 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7099) ((_ to_fp 11 53) x1_ack!7092)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7092) ((_ to_fp 11 53) x2_ack!7093)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7092)
                       ((_ to_fp 11 53) x0_ack!7099))
               ((_ to_fp 11 53) x0_ack!7099))
       ((_ to_fp 11 53) x1_ack!7092)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7092)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7092)
                       ((_ to_fp 11 53) x0_ack!7099)))
       ((_ to_fp 11 53) x0_ack!7099)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7093)
                       ((_ to_fp 11 53) x1_ack!7092))
               ((_ to_fp 11 53) x1_ack!7092))
       ((_ to_fp 11 53) x2_ack!7093)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7093)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7093)
                       ((_ to_fp 11 53) x1_ack!7092)))
       ((_ to_fp 11 53) x1_ack!7092)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7092)
                    ((_ to_fp 11 53) x0_ack!7099))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7093)
                    ((_ to_fp 11 53) x1_ack!7092))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7097) ((_ to_fp 11 53) b_ack!7098))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7097) ((_ to_fp 11 53) x0_ack!7099))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7098) ((_ to_fp 11 53) x2_ack!7093))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7097) ((_ to_fp 11 53) b_ack!7098))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7097) ((_ to_fp 11 53) x0_ack!7099))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7097) ((_ to_fp 11 53) x1_ack!7092)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7092) ((_ to_fp 11 53) a_ack!7097))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7098) ((_ to_fp 11 53) x1_ack!7092))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7098) ((_ to_fp 11 53) x2_ack!7093))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7093)
                    ((_ to_fp 11 53) x1_ack!7092))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7096)
                           ((_ to_fp 11 53) y1_ack!7095))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7093)
                                   ((_ to_fp 11 53) x1_ack!7092)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7095)
                           ((_ to_fp 11 53) y0_ack!7094))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7092)
                                   ((_ to_fp 11 53) x0_ack!7099)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7093)
                                   ((_ to_fp 11 53) x1_ack!7092))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7092)
                                   ((_ to_fp 11 53) x0_ack!7099)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7097)
                                   ((_ to_fp 11 53) x1_ack!7092))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7097)
                                   ((_ to_fp 11 53) x1_ack!7092)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7098)
                                   ((_ to_fp 11 53) x1_ack!7092))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7098)
                                   ((_ to_fp 11 53) x1_ack!7092))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7097)
                                   ((_ to_fp 11 53) x1_ack!7092))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7098)
                                   ((_ to_fp 11 53) x1_ack!7092))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7093)
                           ((_ to_fp 11 53) x1_ack!7092))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7096)
                                   ((_ to_fp 11 53) y1_ack!7095))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7093)
                                   ((_ to_fp 11 53) x1_ack!7092)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7097)
                                   ((_ to_fp 11 53) x1_ack!7092))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7098)
                                   ((_ to_fp 11 53) x1_ack!7092))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!7095) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)
