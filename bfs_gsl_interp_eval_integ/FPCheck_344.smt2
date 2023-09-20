(declare-fun x1_ack!4311 () (_ BitVec 64))
(declare-fun x0_ack!4318 () (_ BitVec 64))
(declare-fun x2_ack!4312 () (_ BitVec 64))
(declare-fun b_ack!4317 () (_ BitVec 64))
(declare-fun a_ack!4316 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!4313 () (_ BitVec 64))
(declare-fun y1_ack!4314 () (_ BitVec 64))
(declare-fun y2_ack!4315 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4318) ((_ to_fp 11 53) x1_ack!4311)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4311) ((_ to_fp 11 53) x2_ack!4312)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4311)
                       ((_ to_fp 11 53) x0_ack!4318))
               ((_ to_fp 11 53) x0_ack!4318))
       ((_ to_fp 11 53) x1_ack!4311)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4311)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4311)
                       ((_ to_fp 11 53) x0_ack!4318)))
       ((_ to_fp 11 53) x0_ack!4318)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4312)
                       ((_ to_fp 11 53) x1_ack!4311))
               ((_ to_fp 11 53) x1_ack!4311))
       ((_ to_fp 11 53) x2_ack!4312)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4312)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4312)
                       ((_ to_fp 11 53) x1_ack!4311)))
       ((_ to_fp 11 53) x1_ack!4311)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4311)
                    ((_ to_fp 11 53) x0_ack!4318))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4312)
                    ((_ to_fp 11 53) x1_ack!4311))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4316) ((_ to_fp 11 53) b_ack!4317))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4316) ((_ to_fp 11 53) x0_ack!4318))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4317) ((_ to_fp 11 53) x2_ack!4312))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4316) ((_ to_fp 11 53) b_ack!4317))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4316) ((_ to_fp 11 53) x0_ack!4318))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4316) ((_ to_fp 11 53) x1_ack!4311))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4317) ((_ to_fp 11 53) x0_ack!4318))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4317) ((_ to_fp 11 53) x1_ack!4311))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4311)
                    ((_ to_fp 11 53) x0_ack!4318))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!4315)
                           ((_ to_fp 11 53) y1_ack!4314))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4312)
                                   ((_ to_fp 11 53) x1_ack!4311)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!4314)
                           ((_ to_fp 11 53) y0_ack!4313))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4311)
                                   ((_ to_fp 11 53) x0_ack!4318)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!4312)
                                   ((_ to_fp 11 53) x1_ack!4311))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4311)
                                   ((_ to_fp 11 53) x0_ack!4318))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4311)
                                   ((_ to_fp 11 53) x0_ack!4318))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!4314)
                                   ((_ to_fp 11 53) y0_ack!4313))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!4311)
                                   ((_ to_fp 11 53) x0_ack!4318)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!4316)
                    ((_ to_fp 11 53) x0_ack!4318))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!4317)
                    ((_ to_fp 11 53) x0_ack!4318)))))))))

(check-sat)
(exit)
