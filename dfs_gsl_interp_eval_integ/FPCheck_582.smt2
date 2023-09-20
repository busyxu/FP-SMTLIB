(declare-fun x1_ack!7348 () (_ BitVec 64))
(declare-fun x0_ack!7354 () (_ BitVec 64))
(declare-fun x2_ack!7349 () (_ BitVec 64))
(declare-fun b_ack!7353 () (_ BitVec 64))
(declare-fun a_ack!7352 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7350 () (_ BitVec 64))
(declare-fun y1_ack!7351 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7354) ((_ to_fp 11 53) x1_ack!7348)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7348) ((_ to_fp 11 53) x2_ack!7349)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7348)
                       ((_ to_fp 11 53) x0_ack!7354))
               ((_ to_fp 11 53) x0_ack!7354))
       ((_ to_fp 11 53) x1_ack!7348)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7348)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7348)
                       ((_ to_fp 11 53) x0_ack!7354)))
       ((_ to_fp 11 53) x0_ack!7354)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7349)
                       ((_ to_fp 11 53) x1_ack!7348))
               ((_ to_fp 11 53) x1_ack!7348))
       ((_ to_fp 11 53) x2_ack!7349)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7349)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7349)
                       ((_ to_fp 11 53) x1_ack!7348)))
       ((_ to_fp 11 53) x1_ack!7348)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7348)
                    ((_ to_fp 11 53) x0_ack!7354))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7349)
                    ((_ to_fp 11 53) x1_ack!7348))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7352) ((_ to_fp 11 53) b_ack!7353))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7352) ((_ to_fp 11 53) x0_ack!7354))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7353) ((_ to_fp 11 53) x2_ack!7349))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7352) ((_ to_fp 11 53) b_ack!7353))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7352) ((_ to_fp 11 53) x0_ack!7354))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7352) ((_ to_fp 11 53) x1_ack!7348))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7353) ((_ to_fp 11 53) x0_ack!7354)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7348)
                    ((_ to_fp 11 53) x0_ack!7354))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!7351)
          ((_ to_fp 11 53) y0_ack!7350))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7348)
          ((_ to_fp 11 53) x0_ack!7354))))

(check-sat)
(exit)
