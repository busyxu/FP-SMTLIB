(declare-fun x1_ack!7894 () (_ BitVec 64))
(declare-fun x0_ack!7901 () (_ BitVec 64))
(declare-fun x2_ack!7895 () (_ BitVec 64))
(declare-fun b_ack!7900 () (_ BitVec 64))
(declare-fun a_ack!7899 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7896 () (_ BitVec 64))
(declare-fun y1_ack!7897 () (_ BitVec 64))
(declare-fun y2_ack!7898 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7901) ((_ to_fp 11 53) x1_ack!7894)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7894) ((_ to_fp 11 53) x2_ack!7895)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7894)
                       ((_ to_fp 11 53) x0_ack!7901))
               ((_ to_fp 11 53) x0_ack!7901))
       ((_ to_fp 11 53) x1_ack!7894)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7894)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7894)
                       ((_ to_fp 11 53) x0_ack!7901)))
       ((_ to_fp 11 53) x0_ack!7901)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7895)
                       ((_ to_fp 11 53) x1_ack!7894))
               ((_ to_fp 11 53) x1_ack!7894))
       ((_ to_fp 11 53) x2_ack!7895)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7895)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7895)
                       ((_ to_fp 11 53) x1_ack!7894)))
       ((_ to_fp 11 53) x1_ack!7894)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7894)
                    ((_ to_fp 11 53) x0_ack!7901))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7895)
                    ((_ to_fp 11 53) x1_ack!7894))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7899) ((_ to_fp 11 53) b_ack!7900))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7899) ((_ to_fp 11 53) x0_ack!7901))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7900) ((_ to_fp 11 53) x2_ack!7895))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7899) ((_ to_fp 11 53) b_ack!7900))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7899) ((_ to_fp 11 53) x0_ack!7901))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7899) ((_ to_fp 11 53) x1_ack!7894))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7900) ((_ to_fp 11 53) x0_ack!7901))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7900) ((_ to_fp 11 53) x1_ack!7894)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7894) ((_ to_fp 11 53) b_ack!7900))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7894)
                    ((_ to_fp 11 53) x0_ack!7901))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7895)
                    ((_ to_fp 11 53) x1_ack!7894))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7898)
                           ((_ to_fp 11 53) y1_ack!7897))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7895)
                                   ((_ to_fp 11 53) x1_ack!7894)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7897)
                           ((_ to_fp 11 53) y0_ack!7896))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7895)
                                   ((_ to_fp 11 53) x1_ack!7894))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7899)
                           ((_ to_fp 11 53) x0_ack!7901))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!7894)
                           ((_ to_fp 11 53) x0_ack!7901))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7899)
                                   ((_ to_fp 11 53) x0_ack!7901))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7899)
                                   ((_ to_fp 11 53) x0_ack!7901)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901)))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x1_ack!7894)
                            ((_ to_fp 11 53) x1_ack!7894))
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) b_ack!7900)
                            ((_ to_fp 11 53) x1_ack!7894))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) x1_ack!7894))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) x1_ack!7894)))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7900)
                                    ((_ to_fp 11 53) x1_ack!7894))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7900)
                                    ((_ to_fp 11 53) x1_ack!7894))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!7899)
                                    ((_ to_fp 11 53) x0_ack!7901))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) x0_ack!7901)))))
      (a!20 (fp.add roundNearestTiesToEven
                    a!19
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) x1_ack!7894))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7900)
                                    ((_ to_fp 11 53) x1_ack!7894))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901))
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   ((_ to_fp 11 53) #x4008000000000000)))
      (a!11 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!4
                            ((_ to_fp 11 53) #x0000000000000000))
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) x0_ack!7901)))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) x2_ack!7895)
                            ((_ to_fp 11 53) x1_ack!7894))
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!4))))
      (a!22 (fp.div roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x0000000000000000)
                            a!4)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4008000000000000)
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x2_ack!7895)
                                    ((_ to_fp 11 53) x1_ack!7894))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!7897)
                                   ((_ to_fp 11 53) y0_ack!7896))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7894)
                                   ((_ to_fp 11 53) x0_ack!7901)))
                   a!5))
      (a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!11)
                            a!7)
                    a!9))
      (a!16 (fp.sub roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) y2_ack!7898)
                                    ((_ to_fp 11 53) y1_ack!7897))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x2_ack!7895)
                                    ((_ to_fp 11 53) x1_ack!7894)))
                    (fp.div roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x4008000000000000))))
      (a!23 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd0000000000000)
                                    a!22)
                            a!17)
                    a!19)))
(let ((a!8 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) y0_ack!7896)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   a!6)
                           a!7)))
      (a!18 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) y1_ack!7897)
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fe0000000000000)
                                    a!16)
                            a!17))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!8
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!10))
                    a!12))
      (a!21 (fp.add roundNearestTiesToEven
                    a!18
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd5555555555555)
                                    a!4)
                            a!20))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) x1_ack!7894)
                                    ((_ to_fp 11 53) a_ack!7899))
                            a!13))))
  (FPCHECK_FADD_ACCURACY
    a!14
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!7900)
                    ((_ to_fp 11 53) x1_ack!7894))
            (fp.add roundNearestTiesToEven a!21 a!23)))))))))))

(check-sat)
(exit)
