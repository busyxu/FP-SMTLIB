(declare-fun x1_ack!7153 () (_ BitVec 64))
(declare-fun x0_ack!7160 () (_ BitVec 64))
(declare-fun x2_ack!7154 () (_ BitVec 64))
(declare-fun b_ack!7159 () (_ BitVec 64))
(declare-fun a_ack!7158 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7155 () (_ BitVec 64))
(declare-fun y1_ack!7156 () (_ BitVec 64))
(declare-fun y2_ack!7157 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7160) ((_ to_fp 11 53) x1_ack!7153)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7153) ((_ to_fp 11 53) x2_ack!7154)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7153)
                       ((_ to_fp 11 53) x0_ack!7160))
               ((_ to_fp 11 53) x0_ack!7160))
       ((_ to_fp 11 53) x1_ack!7153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7153)
                       ((_ to_fp 11 53) x0_ack!7160)))
       ((_ to_fp 11 53) x0_ack!7160)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7154)
                       ((_ to_fp 11 53) x1_ack!7153))
               ((_ to_fp 11 53) x1_ack!7153))
       ((_ to_fp 11 53) x2_ack!7154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7154)
                       ((_ to_fp 11 53) x1_ack!7153)))
       ((_ to_fp 11 53) x1_ack!7153)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7153)
                    ((_ to_fp 11 53) x0_ack!7160))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7154)
                    ((_ to_fp 11 53) x1_ack!7153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7158) ((_ to_fp 11 53) b_ack!7159))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7158) ((_ to_fp 11 53) x0_ack!7160))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7159) ((_ to_fp 11 53) x2_ack!7154))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7158) ((_ to_fp 11 53) b_ack!7159))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7158) ((_ to_fp 11 53) x0_ack!7160))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7158) ((_ to_fp 11 53) x1_ack!7153)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7153) ((_ to_fp 11 53) a_ack!7158))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7159) ((_ to_fp 11 53) x1_ack!7153))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7159) ((_ to_fp 11 53) x2_ack!7154))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7154)
                    ((_ to_fp 11 53) x1_ack!7153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7157)
                           ((_ to_fp 11 53) y1_ack!7156))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7154)
                                   ((_ to_fp 11 53) x1_ack!7153)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7156)
                           ((_ to_fp 11 53) y0_ack!7155))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7153)
                                   ((_ to_fp 11 53) x0_ack!7160)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7154)
                                   ((_ to_fp 11 53) x1_ack!7153))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7153)
                                   ((_ to_fp 11 53) x0_ack!7160)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!7158)
                           ((_ to_fp 11 53) x1_ack!7153))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!7159)
                           ((_ to_fp 11 53) x1_ack!7153))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7158)
                                   ((_ to_fp 11 53) x1_ack!7153))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!7158)
                                   ((_ to_fp 11 53) x1_ack!7153)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7159)
                                   ((_ to_fp 11 53) x1_ack!7153))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7159)
                                   ((_ to_fp 11 53) x1_ack!7153))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!10 (fp.add roundNearestTiesToEven
                    a!9
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!7158)
                                    ((_ to_fp 11 53) x1_ack!7153))
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) b_ack!7159)
                                    ((_ to_fp 11 53) x1_ack!7153))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!7154)
                           ((_ to_fp 11 53) x1_ack!7153))
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
                                    ((_ to_fp 11 53) x2_ack!7154)
                                    ((_ to_fp 11 53) x1_ack!7153))))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!7157)
                                   ((_ to_fp 11 53) y1_ack!7156))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7154)
                                   ((_ to_fp 11 53) x1_ack!7153)))
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
                   ((_ to_fp 11 53) y1_ack!7156)
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
  (FPCHECK_FADD_UNDERFLOW a!11 a!13))))))))

(check-sat)
(exit)
