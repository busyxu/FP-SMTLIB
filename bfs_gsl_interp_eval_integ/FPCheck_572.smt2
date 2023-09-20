(declare-fun x1_ack!7230 () (_ BitVec 64))
(declare-fun x0_ack!7237 () (_ BitVec 64))
(declare-fun x2_ack!7231 () (_ BitVec 64))
(declare-fun b_ack!7236 () (_ BitVec 64))
(declare-fun a_ack!7235 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7232 () (_ BitVec 64))
(declare-fun y1_ack!7233 () (_ BitVec 64))
(declare-fun y2_ack!7234 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7237) ((_ to_fp 11 53) x1_ack!7230)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7230) ((_ to_fp 11 53) x2_ack!7231)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7230)
                       ((_ to_fp 11 53) x0_ack!7237))
               ((_ to_fp 11 53) x0_ack!7237))
       ((_ to_fp 11 53) x1_ack!7230)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7230)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7230)
                       ((_ to_fp 11 53) x0_ack!7237)))
       ((_ to_fp 11 53) x0_ack!7237)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7231)
                       ((_ to_fp 11 53) x1_ack!7230))
               ((_ to_fp 11 53) x1_ack!7230))
       ((_ to_fp 11 53) x2_ack!7231)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7231)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7231)
                       ((_ to_fp 11 53) x1_ack!7230)))
       ((_ to_fp 11 53) x1_ack!7230)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7230)
                    ((_ to_fp 11 53) x0_ack!7237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7231)
                    ((_ to_fp 11 53) x1_ack!7230))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7235) ((_ to_fp 11 53) b_ack!7236))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7235) ((_ to_fp 11 53) x0_ack!7237))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7236) ((_ to_fp 11 53) x2_ack!7231))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7235) ((_ to_fp 11 53) b_ack!7236))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7235) ((_ to_fp 11 53) x0_ack!7237))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7235) ((_ to_fp 11 53) x1_ack!7230))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7236) ((_ to_fp 11 53) x0_ack!7237))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7236) ((_ to_fp 11 53) x1_ack!7230)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7230) ((_ to_fp 11 53) b_ack!7236))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7230)
                    ((_ to_fp 11 53) x0_ack!7237))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7231)
                    ((_ to_fp 11 53) x1_ack!7230))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7234)
                           ((_ to_fp 11 53) y1_ack!7233))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7231)
                                   ((_ to_fp 11 53) x1_ack!7230)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7233)
                           ((_ to_fp 11 53) y0_ack!7232))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7230)
                                   ((_ to_fp 11 53) x0_ack!7237)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7231)
                                   ((_ to_fp 11 53) x1_ack!7230))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7230)
                                   ((_ to_fp 11 53) x0_ack!7237))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
