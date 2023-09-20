(declare-fun x1_ack!5187 () (_ BitVec 64))
(declare-fun x0_ack!5194 () (_ BitVec 64))
(declare-fun x2_ack!5188 () (_ BitVec 64))
(declare-fun b_ack!5193 () (_ BitVec 64))
(declare-fun a_ack!5192 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5189 () (_ BitVec 64))
(declare-fun y1_ack!5190 () (_ BitVec 64))
(declare-fun y2_ack!5191 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5194) ((_ to_fp 11 53) x1_ack!5187)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5187) ((_ to_fp 11 53) x2_ack!5188)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5187)
                       ((_ to_fp 11 53) x0_ack!5194))
               ((_ to_fp 11 53) x0_ack!5194))
       ((_ to_fp 11 53) x1_ack!5187)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5187)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5187)
                       ((_ to_fp 11 53) x0_ack!5194)))
       ((_ to_fp 11 53) x0_ack!5194)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5188)
                       ((_ to_fp 11 53) x1_ack!5187))
               ((_ to_fp 11 53) x1_ack!5187))
       ((_ to_fp 11 53) x2_ack!5188)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5188)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5188)
                       ((_ to_fp 11 53) x1_ack!5187)))
       ((_ to_fp 11 53) x1_ack!5187)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5187)
                    ((_ to_fp 11 53) x0_ack!5194))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5188)
                    ((_ to_fp 11 53) x1_ack!5187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5192) ((_ to_fp 11 53) b_ack!5193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5192) ((_ to_fp 11 53) x0_ack!5194))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5193) ((_ to_fp 11 53) x2_ack!5188))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5192) ((_ to_fp 11 53) b_ack!5193))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5192) ((_ to_fp 11 53) x0_ack!5194))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5192) ((_ to_fp 11 53) x1_ack!5187)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5187) ((_ to_fp 11 53) a_ack!5192))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5193) ((_ to_fp 11 53) x1_ack!5187))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5193) ((_ to_fp 11 53) x2_ack!5188)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5188)
                    ((_ to_fp 11 53) x1_ack!5187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5192)
                       ((_ to_fp 11 53) x1_ack!5187))
               ((_ to_fp 11 53) x1_ack!5187))
       ((_ to_fp 11 53) a_ack!5192)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5192)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5192)
                       ((_ to_fp 11 53) x1_ack!5187)))
       ((_ to_fp 11 53) x1_ack!5187)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5191)
                           ((_ to_fp 11 53) y1_ack!5190))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5188)
                                   ((_ to_fp 11 53) x1_ack!5187)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5190)
                           ((_ to_fp 11 53) y0_ack!5189))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5187)
                                   ((_ to_fp 11 53) x0_ack!5194)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5188)
                                   ((_ to_fp 11 53) x1_ack!5187))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5187)
                                   ((_ to_fp 11 53) x0_ack!5194))))))
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
                                   ((_ to_fp 11 53) x2_ack!5188)
                                   ((_ to_fp 11 53) x1_ack!5187))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5191)
                                   ((_ to_fp 11 53) y1_ack!5190))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5188)
                                   ((_ to_fp 11 53) x1_ack!5187)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
