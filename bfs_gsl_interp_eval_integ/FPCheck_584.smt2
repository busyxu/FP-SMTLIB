(declare-fun x1_ack!7347 () (_ BitVec 64))
(declare-fun x0_ack!7351 () (_ BitVec 64))
(declare-fun x2_ack!7348 () (_ BitVec 64))
(declare-fun b_ack!7350 () (_ BitVec 64))
(declare-fun a_ack!7349 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7351) ((_ to_fp 11 53) x1_ack!7347)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7347) ((_ to_fp 11 53) x2_ack!7348)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7347)
                       ((_ to_fp 11 53) x0_ack!7351))
               ((_ to_fp 11 53) x0_ack!7351))
       ((_ to_fp 11 53) x1_ack!7347)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7347)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7347)
                       ((_ to_fp 11 53) x0_ack!7351)))
       ((_ to_fp 11 53) x0_ack!7351)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7348)
                       ((_ to_fp 11 53) x1_ack!7347))
               ((_ to_fp 11 53) x1_ack!7347))
       ((_ to_fp 11 53) x2_ack!7348)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7348)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7348)
                       ((_ to_fp 11 53) x1_ack!7347)))
       ((_ to_fp 11 53) x1_ack!7347)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7347)
                    ((_ to_fp 11 53) x0_ack!7351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7348)
                    ((_ to_fp 11 53) x1_ack!7347))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7349) ((_ to_fp 11 53) b_ack!7350))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7349) ((_ to_fp 11 53) x0_ack!7351))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7350) ((_ to_fp 11 53) x2_ack!7348))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7349) ((_ to_fp 11 53) b_ack!7350))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7349) ((_ to_fp 11 53) x0_ack!7351))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7349) ((_ to_fp 11 53) x1_ack!7347))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7350) ((_ to_fp 11 53) x0_ack!7351))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7350) ((_ to_fp 11 53) x1_ack!7347)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7347) ((_ to_fp 11 53) b_ack!7350))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7347)
                    ((_ to_fp 11 53) x0_ack!7351))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7348)
                    ((_ to_fp 11 53) x1_ack!7347))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7347)
          ((_ to_fp 11 53) x1_ack!7347))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7350)
          ((_ to_fp 11 53) x1_ack!7347))))

(check-sat)
(exit)
